package com.ProcurementSystem.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IBuyerTemplateTaskPhaseDao;
import com.ProcurementSystem.entity.TemplateTaskPhase;

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

}
