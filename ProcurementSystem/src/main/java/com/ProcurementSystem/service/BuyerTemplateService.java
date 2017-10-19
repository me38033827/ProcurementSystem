package com.ProcurementSystem.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IBuyerTemplateDao;
import com.ProcurementSystem.entity.Template;

@Service
public class BuyerTemplateService {
	@Resource
	IBuyerTemplateDao templateDao;
	public void add(Template template) {
		// TODO Auto-generated method stub
		templateDao.add(template);
	}

}
