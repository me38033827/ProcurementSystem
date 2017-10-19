package com.ProcurementSystem.common;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import com.ProcurementSystem.entity.TemplateFolder;
import com.ProcurementSystem.entity.TemplateTreeNode;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class TemplateTree {
	public TemplateTreeNode root;

	public TemplateTree() {
		root = new TemplateTreeNode();
		root.setId(1000001);
		root.setParentId(1000001);
		root.setType(1);
		TemplateFolder templateFolder = new TemplateFolder();
		templateFolder.setName("根文件夹");
		root.setTemplateFolder(templateFolder);
	}

	public void addChild(TemplateTreeNode parent, TemplateTreeNode child) {
		if (parent.getChildren() != null) {
			int hasSame = 0;
			for (TemplateTreeNode node : parent.getChildren()) {
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

	// 遍历
	public void traverse() {
		Queue<TemplateTreeNode> quee = new LinkedList<>();
		quee.offer(root);
		while (!quee.isEmpty()) {
			TemplateTreeNode parent = quee.poll();// 父节点
			if (parent.getType() == 1) {
				System.out.println(parent.getTemplateFolder().getName());
			} else {
				System.out.println(parent.getTemplate().getName());
			}

			if (parent.getChildren() != null) {
				Iterator<TemplateTreeNode> iterator = parent.getChildren().iterator();
				while (iterator.hasNext()) {
					quee.offer(iterator.next());// 入队
				}
			}
		}
	}

	public JSONArray traverseHelper(TemplateTreeNode parentNode) {
		JSONArray array = new JSONArray();
		
		List<TemplateTreeNode> children = parentNode.getChildren();
		for (TemplateTreeNode child : children) {
			JSONObject jsonObj = new JSONObject();
			if (child.getType() == 1) {
				jsonObj.put("text", child.getTemplateFolder().getName());//folder
			}
			else{
				jsonObj.put("text", child.getTemplate().getName());//template
			}
			jsonObj.put("href", "");
			if (child.getType() == 1) {
				jsonObj.put("nodes", traverseHelper(child));
			}
			array.add(jsonObj);
		}
		return array;
	}

	// 遍历创建字符串
	public JSONArray traverseToJSONArray() {
		Queue<TemplateTreeNode> queue = new LinkedList<>();
		queue.offer(root);
		TemplateTreeNode a = queue.poll();
		return traverseHelper(a);
	}
}
