package com.ProcurementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommodityCatalogueController {
	
	@RequestMapping(value="showCreateCommodityCatalogue")
	public String showCreateCommodityCatalogue(){
		return "downStream/commodityCatalogue/showCreateCommodityCatalogue";
	}
}
