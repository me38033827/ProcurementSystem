package com.ProcurementSystem.service;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IUNSPSCDao;
import com.ProcurementSystem.entity.SIMTreeNode;
import com.ProcurementSystem.entity.UNSPSC;
import com.ProcurementSystem.entity.UNSPSCTree;
import com.ProcurementSystem.entity.UNSPSCTreeNode;

@Service
public class UNSPSCService {
	
	@Resource IUNSPSCDao dao;
	
	public UNSPSCTree generateUNSPSCTree(){
		UNSPSCTree tree = new UNSPSCTree();
		Queue<UNSPSCTreeNode> queue = new LinkedList<>();
		queue.offer(tree.root);
		
		while (!queue.isEmpty()) {
			UNSPSCTreeNode parent = queue.poll();//父节点
			if(parent.getId()<Math.pow(10,7)){
				List<UNSPSCTreeNode> children = dao.getChildren(parent.getId());
				if(children != null){
					parent.setChildren(children);//设置子节点
					Iterator<UNSPSCTreeNode> iterator = children.iterator();
					while(iterator.hasNext()){
						UNSPSCTreeNode node = iterator.next();
						queue.offer(node);//入队
					}
				}
			}
		}
		return tree;
	}
	
	public void insertUNSPSC(List<UNSPSC> unspscList){
		dao.insertUNSPSC(unspscList);
	}
}
