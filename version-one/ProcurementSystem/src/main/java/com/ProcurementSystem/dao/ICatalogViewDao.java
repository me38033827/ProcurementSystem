package com.ProcurementSystem.dao;

import java.util.List;
import java.util.Map;

import com.ProcurementSystem.entity.CatalogView;

public interface ICatalogViewDao {

	void insert(CatalogView catalogView);

	List<CatalogView> getCatalogView(CatalogView catalogView);

	void delete(List<String> list);

	List<CatalogView> getNotCatalogView(CatalogView catalogView);

}
