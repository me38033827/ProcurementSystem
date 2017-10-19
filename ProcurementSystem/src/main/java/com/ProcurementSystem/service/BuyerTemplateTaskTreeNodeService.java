package com.ProcurementSystem.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IBuyerTemplateTaskTreeNodeDao;
import com.ProcurementSystem.entity.TemplateTaskTreeNode;

@Service
public class BuyerTemplateTaskTreeNodeService {
	@Resource
	IBuyerTemplateTaskTreeNodeDao templateTaskTreeNodeDao;

	public void add(TemplateTaskTreeNode templateTaskTreeNode) {
		// TODO Auto-generated method stub
		templateTaskTreeNodeDao.add(templateTaskTreeNode);
	}

}
