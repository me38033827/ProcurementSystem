package com.ProcurementSystem.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ProcurementSystem.common.XMLDB;
import com.ProcurementSystem.entity.UNSPSC;
import com.ProcurementSystem.entity.UNSPSCTree;
import com.ProcurementSystem.service.UNSPSCService;

@Controller
public class UNSPSCController {

	@Resource
	UNSPSCService service;
	
	@RequestMapping(value = "unspscToDB")
	public String unspscToDB(HttpServletRequest request){
//		//解析xml存到数据库，勿删
//		XMLDB xml = new XMLDB();
//		List<UNSPSC> unspscList = xml.getAllCode();
//		System.out.println("size"+unspscList.size());
//		//写入数据库
//		service.insertUNSPSC(unspscList);
		UNSPSCTree tree = service.generateUNSPSCTree();
		request.setAttribute("treeData",tree.UNSPSCTreeToJSON());
		return "showUNSPSC";
	}
}
