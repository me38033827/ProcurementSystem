package com.ProcurementSystem.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.ISearchDao;
import com.ProcurementSystem.entity.Search;


@Service
public class SearchService {
	
	@Resource ISearchDao dao;
	public List<Search> getSelectedCondition(Search search){
		return dao.getSelectedCondition(search);
	}
	public List<Search> getSearchList(Search searchInput){
		List<Search> results = dao.getSearchList(searchInput);
		System.out.println(results.get(0).getFieldId());
		searchInput.setFieldId(results.get(0).getFieldId());
		dao.addSearchCondition(searchInput);
		return results;
	}
	
	public Search addSpecCondition(Search search){
		dao.addSearchCondition(search);
		String fieldName = dao.searchFieldName(search);
		search.setFieldName(fieldName);
		return search;
	}
	
	public void delSearchCondition(Search search){
		dao.delSearchCondition(search);
	}
	
	public List<Search> getSearchListNoAdd(Search searchInput){
		List<Search> results = dao.getSearchList(searchInput);
		return results;
	}
	
}
