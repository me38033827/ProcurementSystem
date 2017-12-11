package com.ProcurementSystem.dao;

import java.util.List;
import java.util.Map;

import com.ProcurementSystem.entity.ParentChild;
import com.ProcurementSystem.entity.SIMTreeNode;
import com.ProcurementSystem.entity.SupplierSIM;
import com.ProcurementSystem.entity.SupplierSIMAnswer;
import com.ProcurementSystem.entity.SupplierSIMSelection;

public interface ISupplierSIMDao {
	
	void addFolder(SupplierSIM supplierSIM);
	
	void addQuestion(SupplierSIM supplierSIM);
	
	void addSelection(SupplierSIMSelection selection);
	
	int getMaxId();
	
	List<SIMTreeNode> getChildren(int parentID);
	
	SIMTreeNode getParentNode(int id);
	
	SIMTreeNode getNode(int id);
	
	int getMaxChildOrder(int parentId);
	
	SIMTreeNode haveChildOrNot(int parentId);
	
	void addNode(Map<String, Object> params);
	
	List<SupplierSIMSelection> getSelectionsById(int id);
	
	int getMaxNewId();
	
	SupplierSIM getFolderOrQuestion(int id);
	
	void updateFolder(SupplierSIM sim);
	
	void updateQuestion(SupplierSIM sim);
	
	void delSelections(int id);
	
	void nodeMinusOne(int id);
	
	List<ParentChild> getAllChildNodeId(int id);
	
	void deleteSIM(int id);
	
	void deleteMultipleSIMs(int[] id);
	
	List<SupplierSIMAnswer> getSupplierSIMAnswer(int supplierId);
	
	List<SupplierSIM> getAllQuestionId();
	
	void insertOrUpdateSIMAnswers(List<SupplierSIMAnswer> answers);

	List<SupplierSIM> getMultiSelectionDate();
}
