package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IBuyerTemplateTaskScheduleDao;
import com.ProcurementSystem.entity.TemplateTaskSchedule;
import com.ProcurementSystem.entity.TemplateTaskTreeNode;

@Service
public class BuyerTemplateTaskScheduleService {
	@Resource
	IBuyerTemplateTaskScheduleDao templateTaskScheduleDao;

	public void add(TemplateTaskSchedule templateTaskSchedule) {
		templateTaskScheduleDao.add(templateTaskSchedule);
	}

	public TemplateTaskSchedule getById(Integer id) {
		// TODO Auto-generated method stub
		return templateTaskScheduleDao.getById(id);
	}

	public void edit(TemplateTaskSchedule templateTaskSchedule) {
		// TODO Auto-generated method stub
		templateTaskScheduleDao.edit(templateTaskSchedule);
	}

	public void setStatus(Integer id, String status) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("status", status);
		templateTaskScheduleDao.setStatus(map);
	}

	public TemplateTaskTreeNode getTemplateTaskTreeNode(Integer id) {
		return templateTaskScheduleDao.getTemplateTaskTreeNode(id);
	}

}
