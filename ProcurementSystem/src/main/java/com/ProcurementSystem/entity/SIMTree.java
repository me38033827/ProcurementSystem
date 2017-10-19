package com.ProcurementSystem.entity;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class SIMTree {

	public SIMTreeNode root;
	private String treeStr;
	
	public SIMTree() {
		root = new SIMTreeNode();
		SupplierSIM sim = new SupplierSIM();
		sim.setId(10000);
		sim.setTitle("初始根目录");
		root.setType(1);
		root.setSupplierSIM(sim);
	}

	public void addChild(SIMTreeNode parent, SIMTreeNode child) {
		if (parent.getChildren() != null) {
			int hasSame = 0;
			// 检查是否有相同子节点后添加新的子节点
			for (SIMTreeNode node : parent.getChildren()) {
				if (node.getSupplierSIM().getId() == child.getSupplierSIM().getId()) {
					hasSame = 1;
					break;
				}
			} // 判断是否重复
			if (hasSame == 0) {
				parent.getChildren().add(child);
			}
		}
	}

	// 遍历
	public void traverse() {
		Queue<SIMTreeNode> queue = new LinkedList<>();
		queue.offer(root);
		while (!queue.isEmpty()) {
			SIMTreeNode parent = queue.poll();// 父节点
			System.out.println(parent.getSupplierSIM().getId()+ parent.getSupplierSIM().getTitle());
			if (parent.getChildren() != null) {
				Iterator<SIMTreeNode> iterator = parent.getChildren().iterator();
				while (iterator.hasNext()) {
					queue.offer(iterator.next());// 入队
				}
			} 
		}
	}
	
	public JSONArray traverseHelper(SIMTreeNode parentNode){
		JSONArray array = new JSONArray();
		// type: folder
		if(parentNode.getType()==1){
			List<SIMTreeNode> children = parentNode.getChildren();
			// control: used for 序号显示
			Boolean control = false;
			if(parentNode.getNumber()==null){
				control = true;
			}
			
			for (SIMTreeNode child : children){
				JSONObject jsonObj = new JSONObject();
				String li="";
				if(control==true){
					child.setNumber(child.getOrder().toString());
				}else{
					child.setNumber(parentNode.getNumber()+"."+child.getOrder().toString());
				}
				if(child.getType()==1){
					li="<li><a class=\"manu-deactive\">添加</a ></li>\n"+
							"<li><a class=\"manu-active sim-create-folder folder-" + child.getSupplierSIM().getId()+"\" >区段</a ></li>\n"+
							"<li><a class=\"manu-active sim-create-question question-" + child.getSupplierSIM().getId()+"\" >问题</a ></li>\n"+
							"<li><a class=\"manu-deactive\">操作</a ></li>\n"+
							"<li><a class=\"manu-active\">编辑</a ></li>\n";
				}
				else{
					li="<li><a class=\"manu-deactive\">操作</a ></li>\n"+
							"<li><a class=\"manu-active\">编辑</a ></li>\n";
				}
				jsonObj.put("text", child.getNumber()+"    "+child.getSupplierSIM().getTitle()
						+"<div class=\"btn-group\">\n" +
					    "\t\t<button class=\"btn-ma\" data-toggle=\"dropdown\" style=\"background-color: transparent; width: 100%\">\n" +
					    "\t\t	<span class=\"caret\"></span>\n" +
					    "\t\t</button>\n" +
					    "\t\t<ul class=\"dropdown-menu\" style=\"z-index: 9999\">\n" +
					    li+
					    "\t\t</ul>\n" +
					    "\t\t</div>");
				jsonObj.put("href", "");
				if(child.getType()==1){
					jsonObj.put("nodes", traverseHelper(child));
				}
				array.add(jsonObj);
			}
			return array;
		}
		// type: question
		return array;
	}
	
	// 遍历创建json
	public JSONArray traverseToJSONArray() {
		Queue<SIMTreeNode> queue = new LinkedList<>();
		queue.offer(root);
		SIMTreeNode a = queue.poll();
		return traverseHelper(a);
	}
}
