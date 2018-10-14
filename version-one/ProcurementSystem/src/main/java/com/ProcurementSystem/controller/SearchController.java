package com.ProcurementSystem.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ProcurementSystem.entity.Search;
import com.ProcurementSystem.entity.Supplier;
import com.ProcurementSystem.entity.SupplierSPM;
import com.ProcurementSystem.entity.SupplierSQM;
import com.ProcurementSystem.service.SearchService;
import com.ProcurementSystem.service.SupplierSPMService;
import com.ProcurementSystem.service.SupplierSQMService;
import com.ProcurementSystem.service.SupplierService;

@Controller
@RequestMapping(value = "buyer/search")
public class SearchController {

	@Resource
	SearchService service;
	@Resource
	SupplierService supplierService;
	@Resource
	SupplierSPMService supplierSPMService;
	@Resource
	SupplierSQMService supplierSQMService;

	// 从供应商主页跳转到不同类型的搜索页面
	@RequestMapping(value = "supplierSearchDistribute")
	public String supplierSearchDistribute(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String page = request.getParameter("page");
		int pageId = Integer.parseInt(page);
		String content = request.getParameter("content");

		// 搜索页面标题
		String pageName = service.getPageName(pageId);

		session.setAttribute("pageId", pageId);
		session.setAttribute("pageName", pageName);
		session.setAttribute("content", content);
		return "main/search";
	}

	// ＋功能实现：添加搜索条件
	@RequestMapping(value = "addSearchCondition")
	public @ResponseBody Search addSearchCondition(@RequestParam("userId") int userId,
			@RequestParam("pageId") int pageId, @RequestParam("fieldId") int fieldId) {
		Search searchInput = new Search();
		searchInput.setUserId(userId);
		searchInput.setPageId(pageId);
		searchInput.setFieldId(fieldId);
		return service.addCondition(searchInput);
	}

	// －功能实现：删除搜索条件
	@RequestMapping(value = "delSearchCondition")
	public @ResponseBody Search delSearchCondition(@RequestParam("userId") int userId,
			@RequestParam("pageId") int pageId, @RequestParam("fieldId") int fieldId) {
		Search search = new Search();
		search.setPageId(pageId);
		search.setUserId(userId);
		search.setFieldId(fieldId);
		service.delSearchCondition(search);
		return search;
	}

	// 改变搜索条件
	@RequestMapping(value = "changeSearchCondition")
	public @ResponseBody Search changeSearchCondition(@RequestParam("userId") int userId,
			@RequestParam("pageId") int pageId, @RequestParam("newId") int newId,
			@RequestParam("originId") int originId) {
		Search newSearch = new Search();
		newSearch.setUserId(userId);
		newSearch.setPageId(pageId);
		newSearch.setFieldId(newId);
		Search originSearch = new Search();
		originSearch.setUserId(userId);
		originSearch.setPageId(pageId);
		originSearch.setFieldId(originId);
		Search result = service.changeSearchCondition(newSearch, originSearch);
		return result;
	}

	// 获取下拉框中ajax加载出的其它搜索条件
	@RequestMapping(value = "findOtherCondition")
	public @ResponseBody List<Search> findOtherCondition(@RequestParam("userId") int userId,
			@RequestParam("pageId") int pageId) {
		Search search = new Search();
		search.setPageId(pageId);
		search.setUserId(userId);
		service.delSearchConditionNoMinus(search);
		return service.getSearchListNoAdd(search);
	}

	// 获取已经显示的搜索条件
	@RequestMapping(value = "getSelectedCondition")
	public @ResponseBody List<Search> getSelectedCondition(@RequestParam("userId") int userId,
			@RequestParam("pageId") int pageId) {
		Search search = new Search();
		search.setPageId(pageId);
		search.setUserId(userId);
		return service.getSelectedCondition(search);
	}

	// 供应商搜索
	@RequestMapping(value = "supplierSearch")
	public @ResponseBody List<Supplier> supplierSearch(@RequestParam("content") String content,
			@RequestParam("isClient") String isClient, @RequestParam("isSupplier") String isSupplier,
			@RequestParam("approveState") String approveState, @RequestParam("name") String name) {
		Supplier supplier = new Supplier();
		supplier.setApproveState(approveState);
		supplier.setIsClient(isClient);
		supplier.setIsSupplier(isSupplier);
		supplier.setName(name);
		System.out.println(name);
		return supplierService.completeSearchSupplier(supplier, content);
	}

	// 国家征信系统搜索功能
	@RequestMapping(value = "supplierSearchEx")
	public String supplierSearchEx() {
		return "main/supplierSearchingEx";
	}

	// 供应商搜索
	@RequestMapping(value = "supplierSPMSearch")
	public @ResponseBody List<SupplierSPM> supplierSPMSearch(@RequestParam("content") String content,
			@RequestParam("status") String status, @RequestParam("supplierId") String supplierId,
			@RequestParam("title") String title) {
		SupplierSPM supplierSPM = new SupplierSPM();
		supplierSPM.setTitle(title);
		supplierSPM.setStatus(status);
		Supplier supplier = new Supplier();
		if (supplierId != "") {
			supplier.setUniqueName(Integer.parseInt(supplierId));
		}
		supplierSPM.setSupplier(supplier);
		return supplierSPMService.completeSearchSupplierSPM(supplierSPM, content);
	}

	// 供应商搜索
	@RequestMapping(value = "supplierSQMSearch")
	public @ResponseBody List<SupplierSQM> supplierSQMSearch(
			@RequestParam("content") String content,
			@RequestParam("status") String status,
			@RequestParam("supplierId") String supplierId,
			@RequestParam("title") String title,
			@RequestParam("commodities") String commodities
			){
		SupplierSQM supplierSQM = new SupplierSQM();
		supplierSQM.setTitle(title);
		supplierSQM.setStatus(status);
		Supplier supplier = new Supplier();
		if (supplierId != "") {
			supplier.setUniqueName(Integer.parseInt(supplierId));
		}
		supplierSQM.setSupplier(supplier);
		System.out.println(supplierSQM.getTitle());
		return supplierSQMService.completeSearchSupplierSQM(supplierSQM, content, commodities);
	}
	
	/**
	 * 批量删除供应商
	 * @param ids
	 * @return
	 */
	@RequestMapping(value="supplierMulDelete")
	public @ResponseBody String supplierMulDelete(@RequestBody String[] ids) {
		for (String id : ids) {
			supplierService.deleteSupplier(Integer.parseInt(id));
		}
		return "1000";
	}
	
	/**
	 * 单项删除供应商
	 * @param ids
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="supplierSimDelete")
	public String supplierSimDelete(@RequestBody int id) {
			
		return supplierService.deleteSupplier(id);
	}
}
