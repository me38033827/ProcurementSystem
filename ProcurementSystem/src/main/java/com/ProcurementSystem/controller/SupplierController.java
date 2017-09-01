package com.ProcurementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "supplier")
public class SupplierController {
	
	//AN主页
	@RequestMapping(value = "main")
	public String main(){
		return "supplier/main";
	}

}
