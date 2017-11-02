package com.ProcurementSystem.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IBuyerTemplateTaskScheduleDao;
import com.ProcurementSystem.entity.TemplateTaskSchedule;

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

}
