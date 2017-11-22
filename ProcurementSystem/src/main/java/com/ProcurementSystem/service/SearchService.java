package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.ISearchDao;
import com.ProcurementSystem.entity.Page;
import com.ProcurementSystem.entity.Search;


@Service
public class SearchService {
	
	@Resource ISearchDao dao;
	//获取主页第三行搜索框左侧下拉框内容
	public List<Page> getPageOptions(String type){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("type", type);
		return dao.getPageOptions(params);
	}
	
	//获取已经选择的搜索条件
	public List<Search> getSelectedCondition(Search search){
		return dao.getSelectedCondition(search);
	}
	
	//＋功能实现：获得剩余搜索条件中第一个条件，添加到search表中，并将position在其后面的搜索条件position＋1
	public Search addCondition(Search searchInput){
		//搜索原本位置搜索条件的position，第一行添加则originalPosition为0，其他位置则需要在search表中查找当前位置
		int originalPosition = 0;
		if(searchInput.getFieldId()!=0){
			originalPosition = dao.getPosition(searchInput);
		}
		searchInput.setPosition(originalPosition);
		
		//获取未显示的搜索条件的第一个resultsFirstObj，只包含field_id field_name
		List<Search> results = dao.getSearchList(searchInput);
		if(results.size()!=0){
			Search resultsFirstObj = results.get(0);
			//向resultsFirstObj中添加page_id, user_id, position
			resultsFirstObj.setPageId(searchInput.getPageId());
			resultsFirstObj.setUserId(searchInput.getUserId());
			resultsFirstObj.setPosition(originalPosition+1);
			
			//在search表中添加该搜索条件
			dao.addSearchCondition(resultsFirstObj);
			
			//将原本搜索位置在当前位置后面的搜索条件的position＋1
			dao.addOne(resultsFirstObj);
		
			return resultsFirstObj;
		}else{
			return null;
		}
		
	}
	
	// －功能实现：删除搜索条件后，将所有position在他后面的搜索条件position－1
	public void delSearchCondition(Search search){
		//获得被删除搜索条件先前位置
		int originalPosition = dao.getPosition(search);
		search.setPosition(originalPosition);
		
		//在记录中删除某搜索条件
		dao.delSearchCondition(search);
		
		//将所有position在他后面的搜索条件position－1
		dao.minusOne(search);
	}
	
	// 改变搜索条件时，删除原先search表中记录
	public void delSearchConditionNoMinus(Search search){
			dao.delSearchCondition(search);
	}
	
	// 改变搜索条件
	public Search changeSearchCondition(Search newSearch, Search originSearch){
		//搜索origin search position
		int originalPosition = dao.getPosition(originSearch);
		//删除origin
		dao.delSearchCondition(originSearch);
		//增加new
		newSearch.setPosition(originalPosition);
		dao.addSearchCondition(newSearch);
		String fieldName = dao.searchFieldName(newSearch);
		newSearch.setFieldName(fieldName);
		return newSearch;
	}
	
	//改变搜索条件时，获取下拉框内容
	public List<Search> getSearchListNoAdd(Search searchInput){
		List<Search> results = dao.getSearchList(searchInput);
		return results;
	}

	// 获得某搜索条件的位置
	public int getPosition(Search search){
		return dao.getPosition(search);
	}
	
	// 获取搜索页面名称
	public String getPageName(int pageId){
		return dao.getPageName(pageId);
	}
}
