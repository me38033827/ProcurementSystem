package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.SIMTreeNode;
import com.ProcurementSystem.entity.SupplierSIM;
import com.ProcurementSystem.entity.SupplierSIMSelection;

public interface ISupplierSIMDao {
	void addFolder(SupplierSIM supplierSIM);
	void addQuestion(SupplierSIM supplierSIM);
	void addSelection(SupplierSIMSelection selection);
	int getMaxId();
	List<SIMTreeNode> getChildren(int parentID);
	SIMTreeNode getParentNode(int id);
}
