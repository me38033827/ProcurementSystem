package com.ProcurementSystem.dao;

import java.util.List;
import java.util.Map;

import com.ProcurementSystem.entity.Supplier;

public interface ISupplierDao {

	Supplier getSupplierDetail(Map<String, Object> params);
	List<Supplier> searchSupplier();
}
