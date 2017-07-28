package com.ProcurementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
	@RequestMapping(value = "createPrOrder")
	public String showCreatePrOrder(){
		return "downStream/order/createPrOrder";
	}
}
