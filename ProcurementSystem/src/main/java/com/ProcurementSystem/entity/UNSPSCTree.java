package com.ProcurementSystem.entity;

import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class UNSPSCTree {

	public UNSPSCTreeNode root;
	
	public UNSPSCTree(){
		root = new UNSPSCTreeNode();
		root.setDescription("初始");
		root.setId(0);
	}
	
	public void addChild(UNSPSCTreeNode parent, UNSPSCTreeNode child) {
		if (parent.getChildren() != null) {
			int hasSame = 0;
			// 检查是否有相同子节点后添加新的子节点
			for (UNSPSCTreeNode node : parent.getChildren()) {
				if (node.getId() == child.getId()) {
					hasSame = 1;
					break;
				}
			} // 判断是否重复
			if (hasSame == 0) {
				parent.getChildren().add(child);
			}
		}
	}
	
	public JSONArray UNSPSCTreeToJSONHelper(UNSPSCTreeNode parentNode){
		JSONArray array = new JSONArray();
		
		List<UNSPSCTreeNode> children = parentNode.getChildren();
			
		for (UNSPSCTreeNode child : children){
			JSONObject jsonObj = new JSONObject();
			jsonObj.put("text", child.getDescription() + "<a class=\"right\" style=\"width:15%; color:black;\">"+child.getId()+"</a>");
			jsonObj.put("href", "");
			
			if(child.getChildren().size()!=0){
				jsonObj.put("nodes", UNSPSCTreeToJSONHelper(child));
			}
			array.add(jsonObj);
		}
		return array;
	}
	
	public JSONArray UNSPSCTreeToJSON() {
		Queue<UNSPSCTreeNode> queue = new LinkedList<>();
		queue.offer(root);
		UNSPSCTreeNode a = queue.poll();
		return UNSPSCTreeToJSONHelper(a);
	}
}
