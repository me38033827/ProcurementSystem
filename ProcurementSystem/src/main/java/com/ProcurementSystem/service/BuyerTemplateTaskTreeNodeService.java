package com.ProcurementSystem.service;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.common.TemplateTaskTree;
import com.ProcurementSystem.common.TemplateTree;
import com.ProcurementSystem.dao.IBuyerTemplateTaskTreeNodeDao;
import com.ProcurementSystem.entity.TemplateTaskTreeNode;
import com.ProcurementSystem.entity.TemplateTreeNode;

@Service
public class BuyerTemplateTaskTreeNodeService {
	@Resource
	IBuyerTemplateTaskTreeNodeDao templateTaskTreeNodeDao;
	@Resource
	BuyerTemplateTaskPhaseService templateTaskPhaseService;

	public void add(TemplateTaskTreeNode templateTaskTreeNode) {
		// TODO Auto-generated method stub
		templateTaskTreeNodeDao.add(templateTaskTreeNode);
	}

	// 生成模板任务树
	public TemplateTaskTree generateTemplateTree(TemplateTaskTree templateTaskTree) {
		Queue<TemplateTaskTreeNode> quee = new LinkedList<>();
		quee.offer(templateTaskTree.root);
		while (!quee.isEmpty()) {
			TemplateTaskTreeNode parent = quee.poll();// 父节点
			List<TemplateTaskTreeNode> children = templateTaskTreeNodeDao.getTaskTreeNodeByParentId(parent.getId());
			if (children != null) {
				parent.setChildren(children);// 设置子节点
				Iterator<TemplateTaskTreeNode> iterator = children.iterator();
				while (iterator.hasNext()) {
					quee.offer(iterator.next());// 入队
				}
			} // 一个结点完成
		}
		return templateTaskTree;
	}
	// // 生成模板任务树
	// public TemplateTaskTree generateTemplateTree(TemplateTaskTree
	// templateTaskTree) {
	// Queue<TemplateTaskTreeNode> quee = new LinkedList<>();
	// quee.offer(templateTaskTree.root);
	// while (!quee.isEmpty()) {
	// TemplateTaskTreeNode parent = quee.poll();// 父节点
	// List<TemplateTaskTreeNode> children =
	// templateTaskTreeNodeDao.getTaskTreeNodeByParentId(parent.getId());
	// if (children != null) {
	// parent.setChildren(children);// 设置子节点
	// Iterator<TemplateTaskTreeNode> iterator = children.iterator();
	// while (iterator.hasNext()) {
	// quee.offer(iterator.next());// 入队
	// }
	// } // 一个结点完成
	// }
	// return templateTaskTree;
	// }

	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		templateTaskTreeNodeDao.deleteById(id);
	}

	public void changeStatus(Integer parentId) {// 修改该结点以及其祖父结点的status
		if (parentId == null)
			return;
		TemplateTaskTreeNode templateTaskTreeNode = templateTaskTreeNodeDao.getById(parentId);// 获得该结点
		List<TemplateTaskTreeNode> childs = templateTaskTreeNodeDao.getTaskTreeNodeByParentId(parentId);
		// 是否更改为未开始状态
		int mark = 0;// 0表示未开始，1表示完成,2表示已开始
		for (TemplateTaskTreeNode child : childs) {
			if (child.getType() == 1) {
				if (!child.getTemplateTaskPhase().getStatus().equals("未开始")) {
					mark = -1;
					break;
				}
			} else {
				if (child.getType() == 0) {
					if (!child.getTemplateTaskSchedule().getStatus().equals("未开始")) {
						mark = -1;
						break;
					}
				}
			}
		}
		if (mark == 0) {
			templateTaskPhaseService.setStatus(templateTaskTreeNode.getTemplateTaskPhase().getId(), "未开始");
		}
		// 是否更改为已完成状态
		if (mark == -1) {
			mark = 1;
			for (TemplateTaskTreeNode child : childs) {// 是否更改为已完成状态
				if (child.getType() == 1) {
					if (!child.getTemplateTaskPhase().getStatus().equals("已完成")) {
						mark = -1;
						break;
					}
				} else {
					if (child.getType() == 0) {
						if (!child.getTemplateTaskSchedule().getStatus().equals("已完成")) {
							mark = -1;
							break;
						}
					}
				}
			}
			if (mark == 1) {
				templateTaskPhaseService.setStatus(templateTaskTreeNode.getTemplateTaskPhase().getId(), "已完成");
			}
			if( mark == -1)
				templateTaskPhaseService.setStatus(templateTaskTreeNode.getTemplateTaskPhase().getId(), "已开始");
		}
		changeStatus(templateTaskTreeNode.getParentId());
	}
}
