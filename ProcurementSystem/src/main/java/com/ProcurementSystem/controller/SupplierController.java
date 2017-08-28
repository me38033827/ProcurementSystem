package com.ProcurementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="supplier")
@Controller
public class SupplierController {
	
	//转向主页
	public String index(){
		//模拟登录
		
		return "supplier/main";
	}
}
