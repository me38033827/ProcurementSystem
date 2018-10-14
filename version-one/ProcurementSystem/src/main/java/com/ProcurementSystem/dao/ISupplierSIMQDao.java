package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.SupplierQuestion;

public interface ISupplierSIMQDao {
	void insertSupplierQuestion(SupplierQuestion supplierQuestion);
	List<SupplierQuestion> searchQA(int supplierId);
	int getSupplierQuestionId();
	void updateAnswer(SupplierQuestion supplierQuestion);
}
