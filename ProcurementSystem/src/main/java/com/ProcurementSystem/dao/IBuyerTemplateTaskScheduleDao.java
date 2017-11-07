package com.ProcurementSystem.dao;

import java.util.Map;

import com.ProcurementSystem.entity.TemplateTaskSchedule;
import com.ProcurementSystem.entity.TemplateTaskTreeNode;

public interface IBuyerTemplateTaskScheduleDao {

	void add(TemplateTaskSchedule templateTaskSchedule);

	TemplateTaskSchedule getById(Integer id);

	void edit(TemplateTaskSchedule templateTaskSchedule);

	void setStatus(Map<String, Object> map);

	TemplateTaskTreeNode getTemplateTaskTreeNode(Integer id);

}
