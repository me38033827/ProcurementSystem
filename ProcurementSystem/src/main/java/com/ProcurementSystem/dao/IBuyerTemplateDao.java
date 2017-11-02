package com.ProcurementSystem.dao;

import com.ProcurementSystem.entity.Template;

public interface IBuyerTemplateDao {

	void add(Template template);//添加

	Template getById(Integer id);//根据id查询

	void delete(Integer id);//删除

}
