package com.ProcurementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "buyer")
public class BuyerController {

	//P2P主页
	@RequestMapping(value = "main")
	public String main(){
		return "main/main";
	}
	
	//P2P供应商主页
	@RequestMapping(value = "mainSupplier")
	public String mainSupplier(){
		return "main/mainSupplier";
	}
	
}
