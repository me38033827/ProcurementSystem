package com.ProcurementSystem.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ProcurementSystem.entity.Search;
import com.ProcurementSystem.service.SearchService;

@Controller
@RequestMapping(value = "buyer/search")
public class SearchController {

	@Resource
	SearchService service;

	@RequestMapping(value = "addSearchCondition")
	public @ResponseBody List<Search> addSearchCondition(
			@RequestParam("userId") int userId,
			@RequestParam("pageId") int pageId){
		Search searchInput = new Search();
		searchInput.setUserId(userId);
		searchInput.setPageId(pageId);
		return service.getSearchList(searchInput);
	}
	
	@RequestMapping(value = "addSpecSearchCondition")
	public @ResponseBody Search addSpecSearchCondition(
			@RequestParam("userId") int userId,
			@RequestParam("pageId") int pageId,
			@RequestParam("fieldId") int fieldId){
		Search searchInput = new Search();
		searchInput.setUserId(userId);
		searchInput.setPageId(pageId);
		searchInput.setFieldId(fieldId);
		Search result = service.addSpecCondition(searchInput);
		return result;
	}
	
	@RequestMapping(value = "delSearchCondition")
	public @ResponseBody Search delSearchCondition(
			@RequestParam("userId") int userId,
			@RequestParam("pageId") int pageId,
			@RequestParam("fieldId") int fieldId){
		Search search = new Search();
		search.setPageId(pageId);
		search.setUserId(userId);
		search.setFieldId(fieldId);
		service.delSearchCondition(search);
		return search;
	}
	
	@RequestMapping(value = "findOtherCondition")
	public @ResponseBody List<Search> findOtherCondition(
			@RequestParam("userId") int userId,
			@RequestParam("pageId") int pageId){
		Search search = new Search();
		search.setPageId(pageId);
		search.setUserId(userId);
		service.delSearchCondition(search);
		return service.getSearchListNoAdd(search);
	}
	
	@RequestMapping(value = "getSelectedCondition")
	public @ResponseBody List<Search> getSelectedCondition(
			@RequestParam("userId") int userId,
			@RequestParam("pageId") int pageId){
		Search search = new Search();
		search.setPageId(pageId);
		search.setUserId(userId);
		return service.getSelectedCondition(search);
	}
}
