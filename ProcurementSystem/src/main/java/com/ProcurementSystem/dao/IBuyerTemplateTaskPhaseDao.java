package com.ProcurementSystem.dao;

import com.ProcurementSystem.entity.TemplateTaskPhase;

public interface IBuyerTemplateTaskPhaseDao {

	void add(TemplateTaskPhase templateTaskPhase);// 添加任务阶段

	TemplateTaskPhase getById(Integer id);// 根据id查询

	void editById(TemplateTaskPhase templateTaskPhase);

}
