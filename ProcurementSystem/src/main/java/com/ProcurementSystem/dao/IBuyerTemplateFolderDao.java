package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.TemplateFolder;

public interface IBuyerTemplateFolderDao {

	int add(TemplateFolder templateFolder);//添加

	List<TemplateFolder> getByParentId(Integer parentId);
	
}
