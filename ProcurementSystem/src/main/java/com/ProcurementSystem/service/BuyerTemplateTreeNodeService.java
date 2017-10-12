package com.ProcurementSystem.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

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

}
