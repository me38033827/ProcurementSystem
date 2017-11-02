package com.ProcurementSystem.dao;

import com.ProcurementSystem.entity.TemplateTaskSchedule;

public interface IBuyerTemplateTaskScheduleDao {

	void add(TemplateTaskSchedule templateTaskSchedule);

	TemplateTaskSchedule getById(Integer id);

	void edit(TemplateTaskSchedule templateTaskSchedule);

}
