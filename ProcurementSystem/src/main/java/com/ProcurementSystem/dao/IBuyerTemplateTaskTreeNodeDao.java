package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.TemplateTaskTreeNode;

public interface IBuyerTemplateTaskTreeNodeDao {

	void add(TemplateTaskTreeNode templateTaskTreeNode);// 添加

	List<TemplateTaskTreeNode> getTaskTreeNodeByParentId(Integer id);

	void deleteById(Integer id);

	TemplateTaskTreeNode getById(Integer id);


}
