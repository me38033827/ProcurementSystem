package com.ProcurementSystem.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.ICatalogViewDao;
import com.ProcurementSystem.entity.CatalogView;

@Service
public class CatalogViewService {
	@Resource
	ICatalogViewDao catalogViewDao;

	public void insert(CatalogView catalogView) {
		catalogViewDao.insert(catalogView);
	}

	public List<CatalogView> getCatalogView(CatalogView catalogView) {
		return catalogViewDao.getCatalogView(catalogView);
	}

	public void delete(List<String> list) {
		catalogViewDao.delete(list);
	}

	public List<CatalogView> getNotCatalogView(CatalogView catalogView) {
		// TODO Auto-generated method stub
		return catalogViewDao.getNotCatalogView(catalogView);
	}


}
