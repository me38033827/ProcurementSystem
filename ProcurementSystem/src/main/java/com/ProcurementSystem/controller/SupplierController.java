package com.ProcurementSystem.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ProcurementSystem.entity.Supplier;
import com.ProcurementSystem.service.SupplierService;

@Controller
@RequestMapping(value = "supplier")
public class SupplierController {
	
	@Resource
	SupplierService service;
	
	@RequestMapping(value = "supplierSearching")
	public String showSupplierSearching(){
		return "upStream/supplier/supplierSearching";
	}
	
	@RequestMapping(value = "supplierCreation")
	public String creationSupplier(){
		return "upStream/supplier/supplierCreation";
	}

	@RequestMapping(value = "supplierSearchingR")
	public String showSupplierSearchingR(HttpServletRequest request){
		
		System.out.println("----------------------------------------------------");
		System.out.println("Finding SUPPLIERS...");
		System.out.println("In supplier controller...");
		
		List<Supplier> suppliers = service.searchSupplier();
		
		System.out.println("Back to supplier controller...");
		System.out.println("Find SUPPLIERS successfully!");
		
		System.out.println("----------------------------------------------------");

		request.setAttribute("suppliers", suppliers);
		
		return "upStream/supplier/supplierSearchingR";
	}
	
	
	@RequestMapping(value = "supplierDetail")
	public String showSupplierDetail(HttpServletRequest request){
		int uniqueName = 10000023;
		
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
	
	@RequestMapping(value = "supplierDetailSummary")
	public String showSupplierDetailSummary(){
		return "upStream/supplier/supplierDetailSummary";
	}
	
	@RequestMapping(value = "supplierDetailDoc")
	public String showSupplierDetailDoc(){
		return "upStream/supplier/supplierDetailDoc";
	}
	
	@RequestMapping(value = "supplierDetailHistory")
	public String showSupplierDetailHistory(){
		return "upStream/supplier/supplierDetailHistory";
	}
	
	@RequestMapping(value = "supplierDetailInfo")
	public String showSupplierDetailInfo(){
		return "upStream/supplier/supplierDetailInfo";
	}
	
	@RequestMapping(value = "supplierDetailNews")
	public String showSupplierDetailNews(){
		return "upStream/supplier/supplierDetailNews";
	}
	
	@RequestMapping(value = "supplierDetailReport")
	public String showSupplierDetailReport(){
		return "upStream/supplier/supplierDetailReport";
	}
	
	@RequestMapping(value = "supplierDetailTask")
	public String showSupplierDetailTask(){
		return "upStream/supplier/supplierDetailTask";
	}
	
	@RequestMapping(value = "supplierDetailTeam")
	public String showSupplierDetailTeam(){
		return "upStream/supplier/supplierDetailTeam";
	}
}
