package com.ProcurementSystem.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ProcurementSystem.entity.Supplier;
import com.ProcurementSystem.entity.supplierSQM;
import com.ProcurementSystem.service.SupplierSQMService;
import com.ProcurementSystem.service.SupplierService;

@Controller
@RequestMapping(value = "buyer/supplier")
public class BuyerSupplierController {
	
	@Resource
	SupplierService service;
	@Resource
	SupplierSQMService sqmService;
	
	//供应商搜索功能页面
	@RequestMapping(value = "supplierSearch")
	public String supplierSearch(HttpServletRequest request){
		System.out.println("---Controller: supplierSearch---");
		String action = request.getParameter("action");
		System.out.println("action is " + action);
		if(action.equals("reset")){
			request.getSession().setAttribute("contentSession","");
			request.setAttribute("num", "-1");
			return "upStream/supplier/supplierSearching";
		}
		String content = request.getParameter("content");
		if(action.equals("initial")){
			request.getSession().setAttribute("contentSession", content);
			System.out.println(content);
			if(content.equals("使用名称、标识符或任何其他词语搜索")){
				request.setAttribute("num", "-1");
				return "upStream/supplier/supplierSearching";
			}
		}
		
		if(action.equals("back")){
			content=(String) request.getSession().getAttribute("contentSession");
		}

		if(content==null){
			request.setAttribute("num", "-1");
			return "upStream/supplier/supplierSearching";
		}
		
		// search
		System.out.println("Search for content: " + content);
		if(content.equals("使用名称、标识符或任何其他词语搜索")){
			List<Supplier> suppliers = service.searchAllSupplier();
			request.setAttribute("suppliers", suppliers);
			request.setAttribute("num", Integer.toString(suppliers.size()));
			System.out.println("共有"+Integer.toString(suppliers.size())+"个搜索结果");
		}else{
			List<Supplier> suppliers = service.searchSupplier(content);
			request.setAttribute("suppliers", suppliers);
			request.setAttribute("content", content);
			request.setAttribute("num", Integer.toString(suppliers.size()));
			System.out.println("共有"+Integer.toString(suppliers.size())+"个搜索结果");
		}
		
		request.getSession().setAttribute("contentSession", content);
		return "upStream/supplier/supplierSearching";
	}
	
	//P2P显示供应商概要
	@RequestMapping(value = "supplierDetail")
	public String showSupplierDetail(HttpServletRequest request){
		String uniqueNameStr = request.getParameter("id");
		int uniqueName = -1;
		HttpSession session = request.getSession();
		System.out.println(uniqueNameStr);
		if(uniqueNameStr!=null){
			uniqueName = Integer.parseInt(uniqueNameStr);
			session.setAttribute("uniqueName", uniqueName);
		}else{
			uniqueName = (int) session.getAttribute("uniqueName");
			
		}
		System.out.println("----------------------------------------------------");
		System.out.println("Look up detail information for SUPPLIER (Unique Name) " + uniqueName);
		System.out.println("In supplier controller...");
		
		Supplier supplier = service.getSupplierDetail(uniqueName);
		
		System.out.println("Back to supplier controller...");
		System.out.println("Get information for SUPPLIER (Name) " + supplier.getName() + " successfully!");
		
		System.out.println("----------------------------------------------------");

		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetail";
	}
	
	//P2P显示供应商概述
	@RequestMapping(value = "supplierDetailSummary")
	public String showSupplierDetailSummary(HttpServletRequest request){
		HttpSession session = request.getSession();
		int uniqueName = (int) session.getAttribute("uniqueName");
		Supplier supplier = service.getSupplierDetail(uniqueName);
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailSummary";
	}
	
	//P2P显示供应商文档
	@RequestMapping(value = "supplierDetailDoc")
	public String showSupplierDetailDoc(){
		return "upStream/supplier/supplierDetailDoc";
	}
	
	//P2P显示供应商历史记录
	@RequestMapping(value = "supplierDetailHistory")
	public String showSupplierDetailHistory(){
		return "upStream/supplier/supplierDetailHistory";
	}
	
	//P2P显示供应商信息板
	@RequestMapping(value = "supplierDetailInfo")
	public String showSupplierDetailInfo(){
		return "upStream/supplier/supplierDetailInfo";
	}
	
	//P2P显示供应商事件消息
	@RequestMapping(value = "supplierDetailNews")
	public String showSupplierDetailNews(){
		return "upStream/supplier/supplierDetailNews";
	}
	
	//P2P显示供应商报告
	@RequestMapping(value = "supplierDetailReport")
	public String showSupplierDetailReport(){
		return "upStream/supplier/supplierDetailReport";
	}
	
	//P2P显示供应商团队
	@RequestMapping(value = "supplierDetailTeam")
	public String showSupplierDetailTeam(){
		return "upStream/supplier/supplierDetailTeam";
	}
	
	//P2P显示供应商任务
	@RequestMapping(value = "supplierDetailTask")
	public String showSupplierDetailTask(){
		return "upStream/supplier/supplierDetailTask";
	}
	
	//P2P创建供应商 产生新的供应商标识符
	@RequestMapping(value = "supplierCreation")
	public String creationSupplier(HttpServletRequest request){
		int uniqueName = service.findMaxUniqueName()+1;
		request.setAttribute("uniqueName", uniqueName);
		return "upStream/supplier/supplierCreation";
	}
	
	//P2P传递创建供应商的信息到数据库
	@RequestMapping(value = "supplierAnalyze")
	public String creationSupplierAnalyze(HttpServletRequest request){
		System.out.println("----------------------------------------------------");
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		int uniqueName = Integer.parseInt(request.getParameter("uniqueName"));
		String isSupplier = "是";
		String isClient = request.getParameter("isClient");
		String approveState = request.getParameter("approveState");
		String otherName1 = request.getParameter("otherName1");
		String otherName2 = request.getParameter("otherName2");
		String fullNameByLaw = request.getParameter("fullNameByLaw");
		String stockCode = request.getParameter("stockCode");
		String province = request.getParameter("province");
		String switchboard = request.getParameter("switchboard");
		String mainEmail = request.getParameter("mainEmail");
		String mainFax = request.getParameter("mainFax");
		String organizationType = request.getParameter("organizationType");
		String corporateUrl = request.getParameter("corporateUrl");
		Supplier supplier = new Supplier();
		// not null attributes
		supplier.setUniqueName(uniqueName);
		supplier.setName(name);
		supplier.setSwitchboard(switchboard);
		
		supplier.setIsSupplier(isSupplier);
		supplier.setIsClient(isClient);
		supplier.setApproveState(approveState);
		
		System.out.println("Creating SUPPLIER " + name);
		System.out.println("In supplier controller...");
		
		// other attributes
		if(description!=""){supplier.setDescription(description);}
		if(otherName1!=""){supplier.setOtherName1(otherName1);}
		if(otherName2!=""){supplier.setOtherName2(otherName2);}
		if(fullNameByLaw!=""){supplier.setFullNameByLaw(fullNameByLaw);}
		if(stockCode!=""){supplier.setStockCode(stockCode);}
		if(province!=""){supplier.setProvince(province);}
		if(mainEmail!=""){supplier.setMainEmail(mainEmail);}
		if(mainFax!=""){supplier.setMainFax(mainFax);}
		if(organizationType!=""){supplier.setOrganizationType(organizationType);}
		if(corporateUrl!=""){supplier.setCorporateUrl(corporateUrl);}
		
		service.insertSupplier(supplier);
		
		System.out.println("Back to supplier controller...");
		System.out.println("Get information for SUPPLIER (Name) " + name + " successfully!");
		
		System.out.println("----------------------------------------------------");

		return "redirect:supplierSearch?action=back";
	}
	
	/* SQM搜索 */
	@RequestMapping(value = "sqmSearching")
	public String sqmSearching(HttpServletRequest request){
		String action = request.getParameter("action");
		System.out.println("action is " + action);
		String content = request.getParameter("content");
		if(action.equals("initial")){
			//request.getSession().setAttribute("contentSession", content);
			//request.setAttribute("num", "-1");
			return "upStream/supplier/supplierSQMSearching";
		}
		
		// search
		System.out.println("Search for content: " + content);
		if(content==null){
			List<supplierSQM> supplierSQMs = sqmService.searchAllSupplierSQM();
			request.setAttribute("supplierSQMs", supplierSQMs);
			request.setAttribute("num", Integer.toString(supplierSQMs.size()));
			System.out.println("共有"+Integer.toString(supplierSQMs.size())+"个搜索结果");
		}else{
			List<Supplier> suppliers = service.searchSupplier(content);
			request.setAttribute("suppliers", suppliers);
			request.setAttribute("content", content);
			request.setAttribute("num", Integer.toString(suppliers.size()));
			System.out.println("共有"+Integer.toString(suppliers.size())+"个搜索结果");
		}
		
		request.getSession().setAttribute("contentSession", content);
		return "upStream/supplier/supplierSQMSearching";
	}
	
	@RequestMapping(value = "sqmSearching1")
	public String sqmSearching1(HttpServletRequest request){
		String action = request.getParameter("action");
		System.out.println("action is " + action);
		if(action.equals("reset")){
			request.getSession().setAttribute("contentSession","");
			request.setAttribute("num", "-1");
			return "upStream/supplier/supplierSearching";
		}
		String content = request.getParameter("content");
		if(action.equals("initial")){
			request.getSession().setAttribute("contentSession", content);
			//System.out.println("content: " + content);
			request.setAttribute("num", "-1");
			return "upStream/supplier/supplierSQMSearching";
		}
		
		if(action.equals("back")){
			content=(String) request.getSession().getAttribute("contentSession");
		}

		if(content==null){
			request.setAttribute("num", "-1");
			return "upStream/supplier/supplierSQMsearching";
		}
		
		// search
		System.out.println("Search for content: " + content);
		if(content.equals("使用标题、标识符或任何其他词语搜索")){
			List<Supplier> suppliers = service.searchAllSupplier();
			request.setAttribute("suppliers", suppliers);
			request.setAttribute("num", Integer.toString(suppliers.size()));
			System.out.println("共有"+Integer.toString(suppliers.size())+"个搜索结果");
		}else{
			List<Supplier> suppliers = service.searchSupplier(content);
			request.setAttribute("suppliers", suppliers);
			request.setAttribute("content", content);
			request.setAttribute("num", Integer.toString(suppliers.size()));
			System.out.println("共有"+Integer.toString(suppliers.size())+"个搜索结果");
		}
		
		request.getSession().setAttribute("contentSession", content);
		return "upStream/supplier/supplierSQMsearching";
	}
	
	/* SQM详情 */
	@RequestMapping(value = "sqmSummary")
	public String sqmSummary(HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("id"));
		supplierSQM sqm = sqmService.searchSupplierSQM(id);
		request.getSession().setAttribute("sqm", sqm);
		return "upStream/supplier/supplierSQMsummary";
	}
	
	@RequestMapping(value = "sqmDoc")
	public String sqmDoc(HttpServletRequest request){
		return "upStream/supplier/supplierSQMdoc";
	}
	
	@RequestMapping(value = "sqmTask")
	public String sqmTask(HttpServletRequest request){
		return "upStream/supplier/supplierSQMtask";
	}
	
	@RequestMapping(value = "sqmTeam")
	public String sqmTeam(HttpServletRequest request){
		return "upStream/supplier/supplierSQMteam";
	}
	
	@RequestMapping(value = "sqmInfo")
	public String sqmInfo(HttpServletRequest request){
		return "upStream/supplier/supplierSQMinfo";
	}
	
	@RequestMapping(value = "sqmNews")
	public String sqmNews(HttpServletRequest request){
		return "upStream/supplier/supplierSQMnews";
	}
	
	@RequestMapping(value = "sqmHistory")
	public String sqmHistory(HttpServletRequest request){
		return "upStream/supplier/supplierSQMhistory";
	}
	
	@RequestMapping(value = "sqmCreation")
	public String sqmCreation(HttpServletRequest request, supplierSQM sqm){
		String action = request.getParameter("action");
		if(action==null){
			return "upStream/supplier/supplierSQMcreation";
		}
//		System.out.println(sqm.getTitle());
//		System.out.println(sqm.getSupplierId());
//		System.out.println(sqm.getDescription());
//		System.out.println(sqm.getValidTo());
//		System.out.println(sqm.getLastValid());
//		System.out.println(sqm.getCommodity());
		sqm.setStatus("待审核");
		sqmService.InsertSQM(sqm);
		return "redirect:sqmSummary";
	}
	
	@RequestMapping(value = "sqmStatus")
	public @ResponseBody String sqmStatus(@RequestParam("sqmId") int sqmId, @RequestParam("status") String status){
		supplierSQM sqm = new supplierSQM();
		sqm.setId(sqmId);
		sqm.setStatus(status);
		sqmService.updateSQMStatus(sqm);
		return "";
	}
}
