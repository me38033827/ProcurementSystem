package com.ProcurementSystem.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.ISupplierSIMDao;
import com.ProcurementSystem.entity.ParentChild;
import com.ProcurementSystem.entity.SIMTree;
import com.ProcurementSystem.entity.SIMTreeNode;
import com.ProcurementSystem.entity.SupplierSIM;
import com.ProcurementSystem.entity.SupplierSIMAnswer;
import com.ProcurementSystem.entity.SupplierSIMSelection;

@Service
public class SupplierSIMService {

	@Resource ISupplierSIMDao dao;
	
	// 生成sim树
	public SIMTree generateSIMTree() {
		SIMTree tree = new SIMTree();
		Queue<SIMTreeNode> queue = new LinkedList<>();
		queue.offer(tree.root);
		while (!queue.isEmpty()) {
			SIMTreeNode parent = queue.poll();//父节点
			//parent.getSupplierSIM();
			List<SIMTreeNode> children = dao.getChildren(parent.getSupplierSIM().getId());
			if(children != null) {
				parent.setChildren(children);//设置子节点
				Iterator<SIMTreeNode> iterator = children.iterator();
				while(iterator.hasNext()){
					SIMTreeNode node = iterator.next();
					//如果是带选项的问题，则把选项放到selection里面
					if(node.getType()==2&&node.getSupplierSIM().getAcceptValue()==2){
						node.getSupplierSIM().setSelections(dao.getSelectionsById(node.getSupplierSIM().getId()));
					}
					queue.offer(node);//入队
				}
			}//一个结点完成
		}
		return tree;
	}
	
	// 在数据库中添加文件夹 type：1
	public void addFolder(SupplierSIM sim, int parentId, int order){
		int new_id = dao.getMaxId()+1;
		sim.setId(new_id);
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("parentId", parentId);
		params.put("childrenId", new_id);
		params.put("order", order);
		dao.addFolder(sim);
		dao.addNode(params);
	}
	
	// 在数据库中添加问题 type：2
	public void addQuestion(SupplierSIM sim, int parentId, int order){
		int new_id = dao.getMaxId()+1;
		sim.setId(new_id);
		dao.addQuestion(sim);
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("parentId", parentId);
		params.put("childrenId", new_id);
		params.put("order", order);
		dao.addNode(params);
	}
	
	// 在数据库中添加带选项的问题 type：2
	public void addQuestionWithSelection(SupplierSIM sim, List<String> selections, int parentId, int order){
		int newId = dao.getMaxId()+1;
		sim.setId(newId);
		dao.addQuestion(sim);
		int num = selections.size();
		SupplierSIMSelection selection = new SupplierSIMSelection();
		selection.setQuestionId(newId);
		for(int i = 0; i < num; i++){
			selection.setContent(selections.get(i));
			selection.setSelectionId(i+1);
			dao.addSelection(selection);
		}	
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("parentId", parentId);
		params.put("childrenId", newId);
		params.put("order", order);
		dao.addNode(params);
	}
	
	// 获得某子节点所有父节点信息 创建／编辑
	public Map<String, Object> getAllParentNodes(int id, boolean create){
		List<SIMTreeNode> nodeList = new ArrayList<SIMTreeNode>();
		int origin_id = id;
		String number = "";
		String result = "";
		SIMTreeNode current = dao.getNode(origin_id);
		while(id!=10000){
			SIMTreeNode node = dao.getParentNode(id);
			nodeList.add(0,node);
			id= node.getSupplierSIM().getId();
		}
		nodeList.add(current);
		int count = 0;
		for (SIMTreeNode node : nodeList){
			count++;
			if(count==1){
				number = node.getOrder().toString();
			}else if(count==nodeList.size()){
				result = result + "  /  " + number + "  " + node.getSupplierSIM().getTitle();
			}else{
				result = result + "  /  " + number + "  " + node.getSupplierSIM().getTitle();
				number = number + "." + node.getOrder().toString();
			}
		}
		
		int new_id=1;
		if(create){
			if(dao.haveChildOrNot(current.getSupplierSIM().getId())!=null){
				new_id = dao.getMaxChildOrder(current.getSupplierSIM().getId())+1;
			}
			result = result + "  /  " + number +"." + new_id + "Unititled";
		}
		
		if(result.startsWith("  /  ")){result=result.substring(5);}
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("resultStr", result);
		if(create){
			params.put("parentId", origin_id);
			params.put("order", new_id);
		}
	
		return params;
	}
	
	List<SupplierSIMSelection> getSelectionsById(int id){
		return dao.getSelectionsById(id);
	}
	
	//获得10000最大子节点order
	public int getMaxNewId(){
		return dao.getMaxNewId();
	}
	
	public void deleteQuestion(int id){
		//cascade删除node中相关数据
		dao.nodeMinusOne(id);
		dao.deleteSIM(id);
	}
	
	public void deleteFolder(int id){
		//删除文件夹及所有相关内容
		//dao.nodeMinusOne(id);
		//找到所有不同层级子节点 生成一个id list 然后加上原本的id 全部删掉
		List<ParentChild> relation = dao.getAllChildNodeId(id);
		ArrayList<Integer> results = new ArrayList<Integer>();
		int size = relation.size();
		for(int i = 0; i < size; i++){
			results.add(relation.get(i).getParent());
			if(relation.get(i).getChildren()!=null){
				List<ParentChild> children = relation.get(i).getChildren();
				for(int j = 0; j < children.size(); j++){
					relation.add(children.get(j));
					size++;
				}
			}
		}
		System.out.println(results);
		int[] ids = new int[size+1];
		for(int i = 0; i < size; i++){
			ids[i]=results.get(i);
		}
		ids[size]=id;
		dao.nodeMinusOne(id);
		dao.deleteMultipleSIMs(ids);
	}
	
	//获得某文件夹或问题及选项的全部信息
	public SupplierSIM getFolderOrQuestion(int id){
		return dao.getFolderOrQuestion(id);
	}
	
	//更新文件夹
	public void updateFolder(SupplierSIM sim){
		dao.updateFolder(sim);
	}
	//更新问题
	public void updateQuestion(SupplierSIM sim){
		dao.updateQuestion(sim);
		dao.delSelections(sim.getId());
	}
	//更新带选项的问题
	public void updateQuestionWithSelection(SupplierSIM sim, List<String> selections){
		dao.updateQuestion(sim);
		dao.delSelections(sim.getId());
		SupplierSIMSelection selection = new SupplierSIMSelection();
		selection.setQuestionId(sim.getId());
		for(int i = 0; i < selections.size(); i++){
			selection.setContent(selections.get(i));
			selection.setSelectionId(i+1);
			dao.addSelection(selection);
		}
	}
	
	public List<SupplierSIMAnswer> getSupplierSIMAnswer(int supplierId){
		return dao.getSupplierSIMAnswer(supplierId);
	}
	
	//获得当前问卷中所有问题的id号码
	public List<SupplierSIM> getAllQuestionId(){
		return dao.getAllQuestionId();
	}
	
	public void insertOrUpdateSIMAnswers(List<SupplierSIMAnswer> answers){
		dao.insertOrUpdateSIMAnswers(answers);
	}
	
	//获得多选和日期问题
	public List<SupplierSIM> getMultiSelectionDate(){
		return dao.getMultiSelectionDate();
	}
}
