package com.ProcurementSystem.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ProcurementSystem.entity.Supplier;
import com.ProcurementSystem.service.SupplierService;

@Controller
@RequestMapping(value = "supplier/profile")
public class SupplierProfileController {
	
	@Resource
	SupplierService service;

	//AN从数据库获取供应商信息－初始
	@RequestMapping(value = "editProfile")
	public String editProfile(HttpServletRequest request){
		System.out.println("---Controller: editProfile---");
		HttpSession session = request.getSession();
		int uniqueName=(int)session.getAttribute("supplierUniqueName");
		System.out.println(uniqueName);
		Supplier supplierSession = service.getSupplierDetail(uniqueName);
		session.setAttribute("supplierSession", supplierSession);
		return "supplier/profile/profile";
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
		return "redirect:../main";
	}
	
	//AN关闭供应商信息
	@RequestMapping(value = "profileClose")
	public String closeSupplierProfile(HttpServletRequest request){
		System.out.println("---Controller: profileClose---");
		HttpSession session = request.getSession();
		//Remove attribute
		session.removeAttribute("supplierSession");
		System.out.println("Session attribute 'supplierSession' has already been removed.");
		return "redirect:../main";
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
		supplierSession.setAddress1(supplier.getAddress1());
		supplierSession.setAddress2(supplier.getAddress2());
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
		if(to.equals("contact")){System.out.println("fail");
			return "redirect:profileContact";}
		if(to.equals("customer")){return "redirect:profileCustomer";}
		if(to.equals("doc")){return "redirect:profileDoc";}
		if(to.equals("market")){return "redirect:profileMarket";}
		return "supplier/profile/profile";
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
		return "supplier/profile/profileContact";
	}
	
	//AN显示供应商信息－1基本
	@RequestMapping(value = "profileBasic")
	public String showSupplierProfileBasic(HttpServletRequest request){
		System.out.println("---Controller: profileBasic---");
		HttpSession session = request.getSession();
		Supplier supplierSession = (Supplier) session.getAttribute("supplierSession");
		request.setAttribute("supplierSession", supplierSession);
		return "supplier/profile/profile";
	}
	
	//AN显示供应商信息－2商务
	@RequestMapping(value = "profileBusiness")
	public String showSupplierProfileBusiness(HttpServletRequest request){
		System.out.println("---Controller: profileBusiness---");
		HttpSession session = request.getSession();
		Supplier supplierSession = (Supplier) session.getAttribute("supplierSession");
		request.setAttribute("supplierSession", supplierSession);
		return "supplier/profile/profileBusiness";
	}
	
	//AN显示供应商信息－3营销
	@RequestMapping(value = "profileMarket")
	public String showSupplierProfileMarket(){
		System.out.println("---Controller: profileMarket---");
		return "supplier/profile/profileMarket";
	}
	
	//AN显示供应商信息－4联系人
	@RequestMapping(value = "profileContact")
	public String showSupplierProfileContact(HttpServletRequest request){
		System.out.println("---Controller: profileContact---");
		HttpSession session = request.getSession();
		Supplier supplierSession = (Supplier) session.getAttribute("supplierSession");
		request.setAttribute("supplierSession", supplierSession);
		return "supplier/profile/profileContact";
	}
	
	//AN显示供应商信息－5认证
	@RequestMapping(value = "profileAuth")
	public String showSupplierProfileAuth(){
		System.out.println("---Controller: profileAuth---");
		return "supplier/profile/profileAuth";
	}
	
	//AN显示供应商信息－6请求的客户
	@RequestMapping(value = "profileCustomer")
	public String showSupplierProfileCustomer(){
		System.out.println("---Controller: profileCustomer---");
		return "supplier/profile/profileCustomer";
	}
	
	//AN显示供应商信息－7其他文档
	@RequestMapping(value = "profileDoc")
	public String showSupplierProfileDoc(){
		System.out.println("---Controller: profileDoc---");
		return "supplier/profile/profileDoc";
	}
}
