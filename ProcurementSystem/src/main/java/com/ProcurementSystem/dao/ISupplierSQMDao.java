package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.SupplierSQM;

public interface ISupplierSQMDao {
	void insertSQM(SupplierSQM sqm);
	List<SupplierSQM> searchAllSupplierSQM();
	void updateSQMStatus(SupplierSQM sqm);
	SupplierSQM getSupplierSQM(int id);
}
