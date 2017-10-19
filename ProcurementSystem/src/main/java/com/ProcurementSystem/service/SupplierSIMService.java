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
import com.ProcurementSystem.entity.SIMTree;
import com.ProcurementSystem.entity.SIMTreeNode;
import com.ProcurementSystem.entity.SupplierSIM;
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
			List<SIMTreeNode> children = dao.getChildren(parent.getSupplierSIM().getId());
			if(children != null){
				parent.setChildren(children);//设置子节点
				Iterator<SIMTreeNode> iterator = children.iterator();
				while(iterator.hasNext()){
					System.out.println(iterator.hasNext());
					queue.offer(iterator.next());//入队
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
		System.out.println(parentId);
		System.out.println(new_id);
		System.out.println(order);
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
		System.out.println(parentId);
		System.out.println(new_id);
		System.out.println(order);
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
		System.out.println(parentId);
		System.out.println(newId);
		System.out.println(order);
		dao.addNode(params);
	}
	
	// 获得某子节点所有父节点信息
	public Map<String, Object> getAllParentNodes(int id){
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
		if(dao.haveChildOrNot(current.getSupplierSIM().getId())!=null){
			new_id = dao.getMaxChildOrder(current.getSupplierSIM().getId())+1;
		}
		result = result + "  /  " + number +"." + new_id + "Unititled";
		if(result.startsWith("  /  ")){result=result.substring(5);}
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("resultStr", result);
		params.put("parentId", origin_id);
		params.put("order", new_id);
		return params;
	}
}
