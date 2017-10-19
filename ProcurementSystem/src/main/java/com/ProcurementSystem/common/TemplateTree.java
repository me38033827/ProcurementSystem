package com.ProcurementSystem.common;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import com.ProcurementSystem.entity.TemplateFolder;
import com.ProcurementSystem.entity.TemplateTreeNode;

public class TemplateTree {
	public TemplateTreeNode root;

	public TemplateTree() {
		root = new TemplateTreeNode();
		root.setId(1000001);
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
			System.out.println(parent.getTemplateFolder().getName());
			if (parent.getChildren() != null) {
				Iterator<TemplateTreeNode> iterator = parent.getChildren().iterator();
				while (iterator.hasNext()) {
					quee.offer(iterator.next());// 入队
				}
			} 
		}
	}
}
