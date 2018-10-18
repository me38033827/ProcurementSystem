package com.ProcurementSystem.entity;

import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class UNSPSCTree {

	public UNSPSCTreeNode root;

	public UNSPSCTree() {
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

	public JSONArray UNSPSCTreeToJSONHelper(UNSPSCTreeNode parentNode) {
		JSONArray array = new JSONArray();

		List<UNSPSCTreeNode> children = parentNode.getChildren();
		if (children != null) {
			for (UNSPSCTreeNode child : children) {
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("text", child.getDescription() + "<a class=\"right\" style=\"width:15%; color:black;\">"
						+ child.getId() + "</a>");
				jsonObj.put("href", "");

				if (child.getChildren() != null) {
					jsonObj.put("nodes", UNSPSCTreeToJSONHelper(child));
				}
				array.add(jsonObj);
			}
		}
		return array;
	}

	public JSONArray UNSPSCTreeToJSON() {
		Queue<UNSPSCTreeNode> queue = new LinkedList<>();
		queue.offer(root);
		UNSPSCTreeNode a = queue.poll();
		return UNSPSCTreeToJSONHelper(a);
	}

	// 添加选择按钮
	public JSONArray UNSPSCTreeToJSON1() {
		Queue<UNSPSCTreeNode> queue = new LinkedList<>();
		queue.offer(root);
		UNSPSCTreeNode a = queue.poll();
		return UNSPSCTreeToJSONHelper1(a);
	}

	public JSONArray UNSPSCTreeToJSONHelper1(UNSPSCTreeNode parentNode) {
		JSONArray array = new JSONArray();

		List<UNSPSCTreeNode> children = parentNode.getChildren();
		if (children != null) {
			for (UNSPSCTreeNode child : children) {
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("text", child.getDescription()+"<button class=\"right btn-w\" style=\"width:; color:black;\" onclick=\"setCommodity(\'"+child.getDescription()+"\',"+child.getId()+")\">选择</button>"+ "<a class=\"right\" style=\"width:30%; color:black;\">"
						+ child.getId() + "</a>");
				jsonObj.put("href", "");

				if (child.getChildren() != null) {
					jsonObj.put("nodes", UNSPSCTreeToJSONHelper1(child));
				}
				array.add(jsonObj);
			}
		}
		return array;
	}
}
