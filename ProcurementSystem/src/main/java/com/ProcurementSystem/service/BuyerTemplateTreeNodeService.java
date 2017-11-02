package com.ProcurementSystem.service;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.common.TemplateTree;
import com.ProcurementSystem.common.NavTreeNode;
import com.ProcurementSystem.dao.IBuyerTemplateTreeNodeDao;
import com.ProcurementSystem.entity.TemplateTreeNode;

@Service
public class BuyerTemplateTreeNodeService {
	@Resource
	IBuyerTemplateTreeNodeDao templateTreeNodeDao;

	public void add(TemplateTreeNode node) {
		// TODO Auto-generated method stub
		templateTreeNodeDao.add(node);
	}

	public List<TemplateTreeNode> getFolderByParentId(Integer parentId) {
		// TODO Auto-generated method stub
		return templateTreeNodeDao.getFolderTreeNodeByParentId(parentId);
	}
	//生成模板树
	public TemplateTree generateTemplateTree() {
		TemplateTree templateTree = new TemplateTree();
		Queue<TemplateTreeNode> quee = new LinkedList<>();
		quee.offer(templateTree.root);
		while (!quee.isEmpty()) {
			TemplateTreeNode parent = quee.poll();//父节点
			List<TemplateTreeNode> children= templateTreeNodeDao.getTreeNodeByParentId(parent.getId());
			if(children != null){
				parent.setChildren(children);//设置子节点
				Iterator<TemplateTreeNode> iterator = children.iterator();
				while(iterator.hasNext()){
					quee.offer(iterator.next());//入队
				}
			}//一个结点完成
		}
		return templateTree;
	}

	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		templateTreeNodeDao.deleteById(id);
	}
	
}
