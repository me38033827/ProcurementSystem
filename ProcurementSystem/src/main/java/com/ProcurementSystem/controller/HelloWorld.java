package com.ProcurementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorld {
	@RequestMapping(value = "index")
	public String toLoginPage(){
		return "page/index";
	}
}
