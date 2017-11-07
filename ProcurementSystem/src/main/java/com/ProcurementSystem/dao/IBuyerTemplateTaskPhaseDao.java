package com.ProcurementSystem.dao;

import java.util.Map;

import com.ProcurementSystem.entity.TemplateTaskPhase;
import com.ProcurementSystem.entity.TemplateTaskTreeNode;

public interface IBuyerTemplateTaskPhaseDao {

	void add(TemplateTaskPhase templateTaskPhase);// 添加任务阶段

	TemplateTaskPhase getById(Integer id);// 根据id查询

	void editById(TemplateTaskPhase templateTaskPhase);

	void setStatus(Map<String, Object> map);

	TemplateTaskTreeNode getTemplateTaskTreeNode(Integer id);

}
