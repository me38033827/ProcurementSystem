package com.ProcurementSystem.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ProcurementSystem.entity.CommodityCatalog;
import com.ProcurementSystem.service.CommodityCatalogService;

@Controller
@RequestMapping(value = "commodityCatalog")
public class CommodityCatalogController {
	@Resource
	CommodityCatalogService service;

	// 测试
	@RequestMapping(value = "index")
	public String test(HttpServletRequest request) {
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
		HttpSession session = request.getSession();
		session.setAttribute("commodityCatalog", commodityCatalog);
		return "downStream/commodityCatalog/commodityCatalogUpload";
	}

	// 解析商品目录，并进行持久化存储;转向商品目录内容
	@RequestMapping(value = "commodityCatalogAnalyze")
	public String commodityCatalogUpload(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
		String uploadUrl = request.getSession().getServletContext().getRealPath("/") + "upload/";
		HttpSession session = request.getSession();
		service.commodityCatalogUpload(file, uploadUrl);// 保存上传的文件
		CommodityCatalog commodityCatalog = (CommodityCatalog) session.getAttribute("commodityCatalog");
		service.insertCommodityCatalog(commodityCatalog);// 持久化存储商品目录
		System.out.println("商品目录唯一标识:" + commodityCatalog.getUniqueName());
		service.commodityCatalogAnalyze(commodityCatalog, uploadUrl + file.getOriginalFilename());// 解析文件，持久化存储商品
		request.setAttribute("commodityCatalog", commodityCatalog);
		// 获取当前上传目录内容，准备在前端显示
		return "downStream/commodityCatalog/commodityCatalogContent";
	}

}
