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
			String icon = createIcon(child);// 创建icon
			if (child.getType() == 1) {// folder
				String li = "<div class=\"btn-group\">" + "<button class=\"btn-ma\" data-toggle=\"dropdown\" "
						+ "style=\"background-color: transparent; width: 100%\">" + icon
						+ child.getTemplateFolder().getName() + "<span class=\"caret\"></span>" + "</button>"
						+ "<ul class=\"dropdown-menu\" style=\"z-index: 9999\">"
						+ "<li><a class=\"manu-deactive\">操作</a></li>" + "<li><a class=\"manu-active folder-profile-"
						+ child.getTemplateFolder().getId() + "\">&nbsp;&nbsp;查看详细信息</a></li>"
						+ "<li><a class=\"manu-active folder-edit-" + child.getTemplateFolder().getId()
						+ "\">&nbsp;&nbsp;编辑</a></li>" + "<li><a class=\"manu-active folder-delete-" + child.getId()
						+ "\">&nbsp;&nbsp;删除</a></li>" + "<li><a class=\"manu-deactive\">创建</a></li>"
						+ "<li><a class=\"manu-active folder-create-" + child.getId() + "\">&nbsp;&nbsp;文件夹</a></li>"
						+ "<li><a class=\"manu-active template-create-" + child.getId() + "\">&nbsp;&nbsp;模板</a></li>"
						+ "</ul></div>";
				String col2 = "<div class=\"tree-2-col\">&nbsp;</div>";
				String col3 = "<div class=\"tree-2-col\">"+child.getTemplateFolder().getOwner()+"</div>";
				li += col2 + col3;
				jsonObj.put("text", li);
			} else {// template,sim不可编辑
				 if (child.getTemplate().getType().equals("SIM")) {
				 String li = "<div class=\"btn-group\">" + "<button class=\"btn-ma\" data-toggle=\"dropdown\" "
				 + "style=\"background-color: transparent; width: 100%\">" +
				 icon
				 + child.getTemplate().getName() + "<span  class=\"caret\"></span>" + "</button>"
				 + "<ul class=\"dropdown-menu\" style=\"z-index: 9999\">"
				 + "<li><a class=\"manu-deactive\">操作</a></li>" + "<li><a  class=\"manu-active template-open-"
				 + child.getTemplate().getId() + "\">&nbsp;&nbsp;打开</a></li>"
				 + "<li><a class=\"manu-active template-delete-" + child.getTemplate().getId()
				 + "\">&nbsp;&nbsp;删除</a></li>" 
				 + "</ul></div>";
				 String col2 = "<div class=\"tree-2-col\">" + child.getTemplate().getStatus() +"</div>";
				 String col3 = "<div class=\"tree-2-col\">"+ child.getTemplate().getOwner() +"</div>";
				 li += col2 + col3;
				 jsonObj.put("text", li);
				 } else {
				String li = "<div class=\"btn-group\">" + "<button class=\"btn-ma\" data-toggle=\"dropdown\" "
						+ "style=\"background-color: transparent; width: 100%\">" + icon + child.getTemplate().getName()
						+ "<span class=\"caret\"></span>" + "</button>"
						+ "<ul class=\"dropdown-menu\" style=\"z-index: 9999\">"
						+ "<li><a class=\"manu-deactive\">操作</a></li>" + "<li><a class=\"manu-active template-open-"
						+ child.getTemplate().getId() + "\">&nbsp;&nbsp;打开</a></li>"
						+ "<li><a class=\"manu-active\" href=\"\">&nbsp;&nbsp;复制</a></li>"
						+ "<li><a class=\"manu-active template-delete-" + child.getTemplate().getId()
						+ "\">&nbsp;&nbsp;删除</a></li>" 
						+ "</ul></div>";
				String col2 = "<div class=\"tree-2-col\">" + child.getTemplate().getStatus() + "</div>";
				String col3 = "<div class=\"tree-2-col\">"+ child.getTemplate().getOwner() +"</div>";
				li += col2 + col3;
				jsonObj.put("text", li);
				 }
			}
			jsonObj.put("href", "");
			if (child.getType() == 1) {
				jsonObj.put("nodes", traverseHelper(child));
			}
			array.add(jsonObj);
		}
		return array;
	}

	/** 创建图标 */
	private String createIcon(TemplateTreeNode child) {
		String icon = "";
		if (child.getType() == 1) {// folder
			icon = "<i class=\"fa fa-folder-o icon-folder\">&nbsp;&nbsp;</i>";
		} else {
			if (child.getTemplate().getType().equals("SIM")) {
				icon = "<i class=\"fa fa-user icon-folder \">&nbsp;&nbsp;</i>";
			} else if (child.getTemplate().getType().equals("SPM")) {
				icon = "<i class=\"fa fa-address-card icon-folder \">&nbsp;&nbsp;</i>";
			} else if (child.getTemplate().getType().equals("SQM")) {
				icon = "<i class=\"fa fa-address-card-o icon-folder \">&nbsp;&nbsp;</i>";
			}
		}
		return icon;
	}

	// 转json格式
	public JSONArray traverseToJSONArray() {
		Queue<TemplateTreeNode> queue = new LinkedList<>();
		queue.offer(root);
		TemplateTreeNode a = queue.poll();
		return traverseHelper(a);
	}
}
