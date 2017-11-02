package com.ProcurementSystem.common;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import com.ProcurementSystem.entity.TemplateFolder;
import com.ProcurementSystem.entity.TemplateTaskTreeNode;
import com.ProcurementSystem.entity.TemplateTaskTreeNode;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class TemplateTaskTree {
	public TemplateTaskTreeNode root;

	public TemplateTaskTree(TemplateTaskTreeNode root) {
		this.root = root;
	}

	public void addChild(TemplateTaskTreeNode parent, TemplateTaskTreeNode child) {
		if (parent.getChildren() != null) {
			int hasSame = 0;
			for (TemplateTaskTreeNode node : parent.getChildren()) {
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
		Queue<TemplateTaskTreeNode> quee = new LinkedList<>();
		quee.offer(root);
		while (!quee.isEmpty()) {
			TemplateTaskTreeNode parent = quee.poll();// 父节点
			if (parent.getType() == 1)
				System.out.println(parent.getTemplateTaskPhase().getTitle());
			else {
				System.out.println(parent.getTemplateTaskSchedule().getTitle());
			}
			if (parent.getChildren() != null) {
				Iterator<TemplateTaskTreeNode> iterator = parent.getChildren().iterator();
				while (iterator.hasNext()) {
					quee.offer(iterator.next());// 入队
				}
			}
		}
	}

	public JSONArray traverseHelper(TemplateTaskTreeNode parentNode) {
		JSONArray array = new JSONArray();
		List<TemplateTaskTreeNode> children = parentNode.getChildren();
		for (TemplateTaskTreeNode child : children) {
			JSONObject jsonObj = new JSONObject();
			String icon = createIcon(child);// 创建icon
			if (child.getType() == 1) {
				String li = "<div class=\"btn-group\">" + "<button class=\"btn-ma\" data-toggle=\"dropdown\" "
						+ "style=\"background-color: transparent; width: 100%\">" + icon
						+ child.getTemplateTaskPhase().getTitle() + "<span class=\"caret\"></span>" + "</button>"
						+ "<ul class=\"dropdown-menu\" style=\"z-index: 9999\">"
						+ "<li><a class=\"manu-deactive\">操作</a></li>"
						+ "<li><a class=\"manu-active templateTaskPhase-info-" + child.getTemplateTaskPhase().getId()
						+ "\" " + "\">&nbsp;&nbsp;查看详细信息</a></li>"
						+ "<li><a class=\"manu-active templateTaskPhase-edit-" + child.getTemplateTaskPhase().getId()
						+ "\" " + "\">&nbsp;&nbsp;编辑</a></li>" + "<li><a class=\"manu-active templateTaskPhase-delete-"
						+ child.getId() + "\" " + "\">&nbsp;&nbsp;删除</a></li>"
						+ "<li><a class=\"manu-deactive\">创建</a></li>"
						+ "<li><a class=\"manu-active templateTaskPhase-create-" + child.getId() + "\" "
						+ "\">&nbsp;&nbsp;阶段</a></li>" + "<li><a class=\"manu-active templateTaskSchedule-create-"
						+ child.getId() + "\" " + "\">&nbsp;&nbsp;待办事项</a></li>" + "</ul></div>";
				String col2 = "<div class=\"tree-2-col\">未激活</div>";
				String col3 = "<div class=\"tree-2-col\">System</div>";
				li += col2 + col3;
				jsonObj.put("text", li);
				jsonObj.put("href", "");
				jsonObj.put("nodes", traverseHelper(child));
				array.add(jsonObj);
			} else {
				String li = "<div class=\"btn-group\">" + "<button class=\"btn-ma\" data-toggle=\"dropdown\" "
						+ "style=\"background-color: transparent; width: 100%\">" + icon
						+ child.getTemplateTaskSchedule().getTitle() + "<span class=\"caret\"></span>" + "</button>"
						+ "<ul class=\"dropdown-menu\" style=\"z-index: 9999\">"
						+ "<li><a class=\"manu-deactive\">操作</a></li>"
						+ "<li><a class=\"manu-active templateTaskSchedule-info-"
						+ child.getTemplateTaskSchedule().getId() + "\" " + "\">&nbsp;&nbsp;查看详细信息</a></li>"
						+ "<li><a class=\"manu-active templateTaskSchedule-edit-"
						+ child.getTemplateTaskSchedule().getId() + "\" " + "\">&nbsp;&nbsp;编辑</a></li>"
						+ "<li><a class=\"manu-active templateTaskSchedule-delete-" + child.getId() + "\" "
						+ "\">&nbsp;&nbsp;删除</a></li>" + "</ul></div>";
				String col2 = "<div class=\"tree-2-col\">未激活</div>";
				String col3 = "<div class=\"tree-2-col\">System</div>";
				li += col2 + col3;
				jsonObj.put("text", li);
				jsonObj.put("href", "");
				array.add(jsonObj);
			}
		}
		return array;
	}

	/** 创建图标 */
	private String createIcon(TemplateTaskTreeNode child) {
		String icon = "<i class=\"fa fa-long-arrow-right\" aria-hidden=\"true\"></i>";
		if (child.getType() == 1) {// folder
			icon = "<i class=\"fa fa-long-arrow-right\" aria-hidden=\"true\"></i>";
		} else {
			icon = "<i class=\" fa fa-clock-o icon-folder\">&nbsp;&nbsp;</i>";
		}
		return icon;
	}

	// 转json格式
	public JSONArray traverseToJSONArray() {
		Queue<TemplateTaskTreeNode> queue = new LinkedList<>();
		queue.offer(root);
		TemplateTaskTreeNode a = queue.poll();
		return traverseHelper(a);
	}
}
