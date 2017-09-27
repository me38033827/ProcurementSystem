package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.Search;

public interface ISearchDao {

	List<Search> getSearchList(Search searchInput);

	void addSearchCondition(Search searchInput);
	
	void delSearchCondition(Search search);
	
	String searchFieldName(Search search);
	
	List<Search> getSelectedCondition(Search search);
}

