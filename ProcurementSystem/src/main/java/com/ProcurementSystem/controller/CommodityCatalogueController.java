package com.ProcurementSystem.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ProcurementSystem.entity.CommodityCatalogue;
import com.ProcurementSystem.service.CommodityCatalogueService;

@Controller
public class CommodityCatalogueController {
	@Resource
	CommodityCatalogueService service;

	// 转向创建商品目录页
	@RequestMapping(value = "commodityCatalogueCreate")
	public String commodityCatalogueCreate() {
		return "downStream/commodityCatalogue/commodityCatalogueCreate";
	}

	// 转向上传商品目录页
	@RequestMapping(value = "commodityCatalogueSelect")
	public String commodityCatalogueSave(HttpServletRequest request, CommodityCatalogue commodityCatalogue) {
		String mySelect = request.getParameter("mySelect");
		request.setAttribute("commodityCatalogue", commodityCatalogue);
		return "downStream/commodityCatalogue/commodityCatalogueUpload";
	}

	// 上传商品目录
	@RequestMapping(value = "commodityCatalogueUpload")
	public String commodityCatalogueUpload(@RequestParam("file")MultipartFile file, HttpServletRequest request) {
		String uploadUrl = request.getSession().getServletContext().getRealPath("/") + "upload/";
		service.commodityCatalogueUpload(file,uploadUrl);
		return "redirect:http://localhost:8080/lesson5/upload/" + file.getOriginalFilename();
	}
}
