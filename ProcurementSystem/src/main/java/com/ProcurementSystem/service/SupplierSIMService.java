package com.ProcurementSystem.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
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
	public void addFolder(SupplierSIM sim){
		sim.setId(dao.getMaxId()+1);
		dao.addFolder(sim);
	}
	
	// 在数据库中添加问题 type：2
	public void addQuestion(SupplierSIM sim){
		sim.setId(dao.getMaxId()+1);
		dao.addQuestion(sim);
	}
	
	// 在数据库中添加带选项的问题 type：2
	public void addQuestionWithSelection(SupplierSIM sim, List<String> selections){
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
	}
	
	// 获得某子节点父节点信息
	public String getAllParentNodes(int id){
		List<SIMTreeNode> nodeList = new ArrayList<SIMTreeNode>();
		String number = "";
		String result = "";
		while(id!=10000){
			SIMTreeNode node = dao.getParentNode(id);
			nodeList.add(0,node);
			id= node.getSupplierSIM().getId();
		}
		nodeList.remove(nodeList.size()-1);
		int count = 0;
		for (SIMTreeNode node : nodeList){
			count++;
			if(count==1){
				number = node.getOrder().toString();
				result = number + node.getSupplierSIM().getTitle();
			}else{
				number = number + "." + node.getOrder().toString();
				result = result + "  /  " + number + node.getSupplierSIM().getTitle();
			}
		}
		System.out.println(result);
		return result;
	}
}
