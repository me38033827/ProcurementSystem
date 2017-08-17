package com.ProcurementSystem.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ProcurementSystem.entity.CommodityCatalog;
import com.ProcurementSystem.service.CommodityCatalogService;

@Controller
@RequestMapping(value="commodityCatalog")
public class CommodityCatalogController {
	@Resource
	CommodityCatalogService service;

	//测试
	@RequestMapping(value = "index")
	public String test(HttpServletRequest request){
		System.out.println(request.getSession().getServletContext().getRealPath("/"));
		return "page/index";
	}
	// 转向创建商品目录页
	@RequestMapping(value = "commodityCatalogCreate")
	public String commodityCatalogCreate() {
		return "downStream/commodityCatalog/commodityCatalogCreate";
	}

	// 上传商品目录
	@RequestMapping(value = "commodityCatalogUpload")
	public String commodityCatalogSave(HttpServletRequest request, CommodityCatalog commodityCatalog) {
		String mySelect = request.getParameter("mySelect");
		request.setAttribute("commodityCatalog", commodityCatalog);
		return "downStream/commodityCatalog/commodityCatalogUpload";
	}

	// 解析商品目录
	@RequestMapping(value = "commodityCatalogAnalyze")
	public String commodityCatalogUpload(@RequestParam("file")MultipartFile file, HttpServletRequest request) {
		String uploadUrl = request.getSession().getServletContext().getRealPath("/") + "upload/";
		service.commodityCatalogUpload(file,uploadUrl);
		service.commodityCatalogAnalyze(uploadUrl+file.getOriginalFilename());
		return "redirect:http://localhost:8080/lesson5/upload/" + file.getOriginalFilename();
	}
	
}
