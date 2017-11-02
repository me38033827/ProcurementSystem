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
}
