package com.ProcurementSystem.dao;

import java.util.List;
import java.util.Map;

import com.ProcurementSystem.entity.Page;
import com.ProcurementSystem.entity.Search;

public interface ISearchDao {

	List<Search> getSearchList(Search searchInput);

	void addSearchCondition(Search searchInput);
	
	void delSearchCondition(Search search);
	
	String searchFieldName(Search search);
	
	List<Search> getSelectedCondition(Search search);
	
	void addOne(Search search);
	
	void minusOne(Search search);
	
	List<Page> getPageOptions(Map<String, Object> params);
	
	int getPosition(Search search);
	
	String getPageName(int pageId);
}

