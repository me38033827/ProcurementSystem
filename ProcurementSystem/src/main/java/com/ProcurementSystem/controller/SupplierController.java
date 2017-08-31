package com.ProcurementSystem.controller;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ProcurementSystem.common.PageParams;
import com.ProcurementSystem.entity.Commodity;
import com.ProcurementSystem.entity.Supplier;
import com.ProcurementSystem.service.SupplierService;

@Controller
@RequestMapping(value = "supplier")
public class SupplierController {
	
	@Resource
	SupplierService service;
	//供应商搜索重置页面
	@RequestMapping(value = "supplierInitial")
	public String supplierInitial(HttpServletRequest request){
		System.out.println("---Controller: supplierInitial---");
		request.setAttribute("num", "-1");
		return "upStream/supplier/supplierSearchingR";
	}
	
	//供应商搜索功能页面
	@RequestMapping(value = "supplierSearch")
	public String supplierSearch(HttpServletRequest request){
		System.out.println("---Controller: supplierSearch---");
		String content = request.getParameter("content");
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
		
		
		return "upStream/supplier/supplierSearchingR";
	}
	
	//P2P显示供应商概要
	@RequestMapping(value = "supplierDetail")
	public String showSupplierDetail(HttpServletRequest request){
		int uniqueName = Integer.parseInt(request.getParameter("id"));
		
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
	public String showSupplierDetailSummary(){
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

		return "upStream/supplier/supplierSearching";
	}
	
	//AN主页
	@RequestMapping(value = "main")
	public String main(HttpServletRequest request){
		System.out.println("---Controller: main---");
		return "supplier/main";
	}
	
	
	//AN从数据库获取供应商信息－初始
	@RequestMapping(value = "editProfile")
	public String editProfile(HttpServletRequest request){
		System.out.println("---Controller: editProfile---");
		HttpSession session = request.getSession();
		Supplier supplierSession = service.getSupplierDetail(10000025);
		session.setAttribute("supplierSession", supplierSession);
		return "supplier/profile";
	}
	
	//AN保存供应商信息
	@RequestMapping(value = "profileSave")
	public String saveSupplierProfile(HttpServletRequest request){
		System.out.println("---Controller: profileSave---");
		HttpSession session = request.getSession();
		Supplier supplierSession = (Supplier) session.getAttribute("supplierSession");
		//System.out.println("SUPPLIER name in session:"+supplierSession.getName());
		service.updateSupplier(supplierSession);
		//Remove attribute
		session.removeAttribute("supplierSession");
		System.out.println("Session attribute 'supplierSession' has already been removed.");
		return "redirect:main";
	}
	
	//AN关闭供应商信息
	@RequestMapping(value = "profileClose")
	public String closeSupplierProfile(HttpServletRequest request){
		System.out.println("---Controller: profileClose---");
		HttpSession session = request.getSession();
		//Remove attribute
		session.removeAttribute("supplierSession");
		System.out.println("Session attribute 'supplierSession' has already been removed.");
		return "redirect:main";
	}
	
	//AN保存当前供应商信息－1基本
	@RequestMapping(value = "profile")
	public String showSupplierProfile(Supplier supplier, HttpServletRequest request){
		System.out.println("---Controller: profile---");
		//System.out.println("Supplier name from website: " + supplier.getName());
		
		//获取supplierSession
		HttpSession session = request.getSession();
		Supplier supplierSession = (Supplier) session.getAttribute("supplierSession");
		
		//把页面上的supplier信息放到session里的supplier里面
		supplierSession.setName(supplier.getName());
		supplierSession.setOtherName1(supplier.getOtherName1());
		supplierSession.setOtherName2(supplier.getOtherName2());
		supplierSession.setDescription(supplier.getDescription());
		supplierSession.setCorporateUrl(supplier.getCorporateUrl());
		supplierSession.setAddress(supplier.getAddress());
		supplierSession.setPostCode(supplier.getPostCode());
		supplierSession.setOtherAddress(supplier.getOtherAddress());
		
		//测试信息传递是否成功
		//System.out.println("SUPPLIER name in supplier: "+supplier.getName());
		//System.out.println("SUPPLIER name in supplierSession: "+supplierSession.getName());
		
		//页面跳转到turnto后页面所对应controller
		String to = request.getParameter("turnto");
		System.out.println("Turn to page: "+ to);
		if(to.equals("save")){return "redirect:profileSave";}
		if(to.equals("business")){return "redirect:profileBusiness";}
		if(to.equals("auth")){return "redirect:profileAuth";}
		if(to.equals("contact")){return "redirect:profileContact";}
		if(to.equals("customer")){return "redirect:profileCustomer";}
		if(to.equals("doc")){return "redirect:profileDoc";}
		if(to.equals("market")){return "redirect:profileMarket";}
		return "supplier/profile";
	}
	
	//AN保存当前供应商信息－4联系人
	@RequestMapping(value = "contact")
	public String showSupplierProfileContact(Supplier supplier, HttpServletRequest request){
		System.out.println("---Controller: contact---");
		
		//获取supplierSession
		HttpSession session = request.getSession();
		Supplier supplierSession = (Supplier) session.getAttribute("supplierSession");
		
		//把页面上的supplier1条信息放到session里的supplier里面
		supplierSession.setMainEmail(supplier.getMainEmail());
		supplierSession.setSwitchboard(supplier.getSwitchboard());
		supplierSession.setSwitchboardZone(supplier.getSwitchboardZone());
		supplierSession.setMainFax(supplier.getMainFax());
		supplierSession.setMainFaxZone(supplier.getMainFaxZone());
		
		
		//页面跳转到turnto后页面所对应controller
		String to = request.getParameter("turnto");
		System.out.println("Turn to page: "+ to);
		if(to.equals("save")){return "redirect:profileSave";}
		if(to.equals("profile")){return "redirect:profileBasic";}
		if(to.equals("business")){return "redirect:profileBusiness";}
		if(to.equals("auth")){return "redirect:profileAuth";}
		if(to.equals("customer")){return "redirect:profileCustomer";}
		if(to.equals("doc")){return "redirect:profileDoc";}
		if(to.equals("market")){return "redirect:profileMarket";}
		return "supplier/profileContact";
	}
	
	//AN显示供应商信息－1基本
	@RequestMapping(value = "profileBasic")
	public String showSupplierProfileBasic(){
		System.out.println("---Controller: profileBasic---");
		return "supplier/profile";
	}
	
	//AN显示供应商信息－2商务
	@RequestMapping(value = "profileBusiness")
	public String showSupplierProfileBusiness(){
		System.out.println("---Controller: profileBusiness---");
		return "supplier/profileBusiness";
	}
	
	//AN显示供应商信息－3营销
	@RequestMapping(value = "profileMarket")
	public String showSupplierProfileMarket(){
		System.out.println("---Controller: profileMarket---");
		return "supplier/profileMarket";
	}
	
	//AN显示供应商信息－4联系人
	@RequestMapping(value = "profileContact")
	public String showSupplierProfileContact(){
		System.out.println("---Controller: profileContact---");
		return "supplier/profileContact";
	}
	
	//AN显示供应商信息－5认证
	@RequestMapping(value = "profileAuth")
	public String showSupplierProfileAuth(){
		System.out.println("---Controller: profileAuth---");
		return "supplier/profileAuth";
	}
	
	//AN显示供应商信息－6请求的客户
	@RequestMapping(value = "profileCustomer")
	public String showSupplierProfileCustomer(){
		System.out.println("---Controller: profileCustomer---");
		return "supplier/profileCustomer";
	}
	
	//AN显示供应商信息－7其他文档
	@RequestMapping(value = "profileDoc")
	public String showSupplierProfileDoc(){
		System.out.println("---Controller: profileDoc---");
		return "supplier/profileDoc";
	}
	
	//test
	@RequestMapping(value = "test")
	public String test(){
		return "supplier/test";
	}
}
