package com.ProcurementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorld {
	@RequestMapping(value = "index")
	public String toLoginPage(){
		return "downStream/commodity/procurementCommodityCatalog";
	}
}
