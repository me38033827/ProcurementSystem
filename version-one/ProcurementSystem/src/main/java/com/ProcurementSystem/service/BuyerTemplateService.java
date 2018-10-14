package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	public List<Template> get(Template template) {
		return templateDao.get(template);
	}

	public void delete(Integer id) {
		// TODO Auto-generated method stub
		templateDao.delete(id);
	}

	public void setStatus(Integer id, String status) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("status", status);
		templateDao.setStatus(map);
	}

	public List<Template> getActivatedTemplate(String type) {
		return templateDao.getActivatedTemplate(type);
	}

}
