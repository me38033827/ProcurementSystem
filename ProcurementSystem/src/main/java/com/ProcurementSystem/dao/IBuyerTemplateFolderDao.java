package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.TemplateFolder;

public interface IBuyerTemplateFolderDao {

	int add(TemplateFolder templateFolder);// 添加

	List<TemplateFolder> getByParentId(Integer parentId);

	TemplateFolder getById(Integer id);//

	void editById(TemplateFolder templateFolder);// 编辑

	void deleteById(Integer id);// 删除

}
