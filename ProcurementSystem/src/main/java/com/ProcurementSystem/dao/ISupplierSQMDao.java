package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.supplierSQM;

public interface ISupplierSQMDao {
	void insertSQM(supplierSQM sqm);
	List<supplierSQM> searchAllSupplierSQM();
	void updateSQMStatus(supplierSQM sqm);
	supplierSQM searchSupplierSQM(int id);
}
