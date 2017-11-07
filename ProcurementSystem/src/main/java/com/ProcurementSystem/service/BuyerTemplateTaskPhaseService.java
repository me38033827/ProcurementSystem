package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IBuyerTemplateTaskPhaseDao;
import com.ProcurementSystem.entity.TemplateTaskPhase;
import com.ProcurementSystem.entity.TemplateTaskTreeNode;

@Service
public class BuyerTemplateTaskPhaseService {
	@Resource
	IBuyerTemplateTaskPhaseDao templateTaskPhaseDao;

	public void add(TemplateTaskPhase templateTaskPhase) {
		templateTaskPhaseDao.add(templateTaskPhase);
	}

	public TemplateTaskPhase getById(Integer id) {
		return templateTaskPhaseDao.getById(id);
	}

	public void editById(TemplateTaskPhase templateTaskPhase) {
		// TODO Auto-generated method stub
		templateTaskPhaseDao.editById(templateTaskPhase);
	}

	public void setStatus(Integer id, String status){
		Map<String,Object> map = new HashMap<>();
		map.put("id", id);
		map.put("status", status);
		templateTaskPhaseDao.setStatus(map);
	}

	public TemplateTaskTreeNode getTemplateTaskTreeNode(Integer id) {
		return templateTaskPhaseDao.getTemplateTaskTreeNode(id);
	}

}
