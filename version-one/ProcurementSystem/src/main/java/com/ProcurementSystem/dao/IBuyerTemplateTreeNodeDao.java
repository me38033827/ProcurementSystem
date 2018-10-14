package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.TemplateTreeNode;

public interface IBuyerTemplateTreeNodeDao {

	void add(TemplateTreeNode node);

	List<TemplateTreeNode> getFolderTreeNodeByParentId(Integer parentId);

	List<TemplateTreeNode> getTreeNodeByParentId(Integer parentId);//获得所有的孩子结点（包括模板和文件夹）

	void deleteById(Integer id);


}
