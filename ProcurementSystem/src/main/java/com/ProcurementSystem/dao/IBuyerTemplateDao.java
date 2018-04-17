package com.ProcurementSystem.dao;

import java.util.List;
import java.util.Map;

import com.ProcurementSystem.entity.Template;

public interface IBuyerTemplateDao {

	void add(Template template);// 添加

	List<Template> get(Template template);// 根据id查询

	void delete(Integer id);// 删除

	void setStatus(Map<String, Object> map);

	List<Template> getActivatedTemplate(String type);

}
