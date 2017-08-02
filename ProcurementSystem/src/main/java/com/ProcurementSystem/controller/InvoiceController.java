package com.ProcurementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InvoiceController {
	@RequestMapping(value = "createInvoice")
	public String showCreatePrOrder(){
		return "downStream/invoice/createInvoice";
	}
	
	
}
