package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.TemplateTreeNode;

public interface IBuyerTemplateTreeNodeDao {

	void add(TemplateTreeNode node);

	List<TemplateTreeNode> getFolderByParentId(Integer parentId);

}
