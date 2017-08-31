package com.ProcurementSystem.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ProcurementSystem.entity.CommodityCatalog;
import com.ProcurementSystem.service.CommodityCatalogService;

@Controller
@RequestMapping(value = "supplierSystem")
public class SupplierSystemController {
	@Resource
	CommodityCatalogService commodityCatalogService;
	
	
	
	/** 转向商品目录创建-详细信息页 */
	@RequestMapping(value = "commodityCatalogCreateDetail")
	public String commodityCatalogCreateDetail(HttpServletRequest request) {
		String supplierUser = "Brown";
		HttpSession session = request.getSession();
		session.setAttribute("supplierUser", supplierUser);// 模拟登录用户
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String createDate = df.format(new Date());
		session.setAttribute("createDate", createDate);// 产生商品目录创建时间
		return "supplierSystem/commodityCatalog/commodityCatalogCreateDetail";
	}

	/** 保存商品目录创建-详细信息页信息,转向商品目录创建-订购页 */
	@RequestMapping(value = "commodityCatalogCreatePurchase")
	public String commodityCatalogCreateDetailSave(HttpServletRequest request,  @Valid CommodityCatalog commodityCatalog,
			BindingResult result,ModelMap map) {
		if (result.hasErrors()) {// 数据校验
			List<FieldError> errorList = result.getFieldErrors();
			for (FieldError error : errorList) {
				System.out.println(error.getField() + "*" + error.getDefaultMessage());
				map.put("Error_" + error.getField(), error.getDefaultMessage());
			}
			return "supplierSystem/commodityCatalog/commodityCatalogCreateDetail";
		}
		HttpSession session = request.getSession();
		String createDate = (String) session.getAttribute("createDate");
		String supplierUser = (String) session.getAttribute("supplierUser");
		commodityCatalog.setCreator(supplierUser);
		commodityCatalog.setCreateDate(createDate);
		commodityCatalog.setType("0");//设置商品目录为supplierSystem方上传
		session.setAttribute("commodityCatalog", commodityCatalog);
		return "supplierSystem/commodityCatalog/commodityCatalogCreatePurchase";
	}

	/** 保存商品目录-订购页信息，并转向商品目录-内容页 */
	@RequestMapping(value = "commodityCatalogCreateContent")
	public String commodityCatalogCreatePurchase(@RequestParam(value = "isDisplayed") String isDisplayed,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		CommodityCatalog commodityCatalog = (CommodityCatalog)session.getAttribute("commodityCatalog");
		commodityCatalog.setIsDisplayed(isDisplayed);
		session.setAttribute("commodityCatalog", commodityCatalog);
		return "supplierSystem/commodityCatalog/commodityCatalogCreateContent";
	}
	
	/**上传文件，解析，验证，并持久化储存*/
	@RequestMapping(value="commodityCatalogValidateAndSave")
	public String commodityCatalogValidateAndSave(@RequestParam("file") MultipartFile file,HttpServletRequest request){
		String uploadUrl = request.getSession().getServletContext().getRealPath("/") + "upload/supplierSystem/";
		HttpSession session = request.getSession();
		CommodityCatalog commodityCatalog = (CommodityCatalog)session.getAttribute("commodityCatalog");//从session中获得commodityCatalog对象
		commodityCatalogService.commodityCatalogUpload(file, uploadUrl,commodityCatalog);// 保存上传的文件
		commodityCatalogService.insertCommodityCatalog(commodityCatalog);// 持久化存储商品目录
		System.out.println("商品目录唯一标识:" + commodityCatalog.getUniqueName());
		commodityCatalogService.commodityCatalogAnalyze(commodityCatalog, uploadUrl + file.getOriginalFilename());// 解析文件，持久化存储商品
		request.setAttribute("commodityCatalog", commodityCatalog);
		// 获取当前上传目录内容，准备在前端显示
		return "downStream/commodityCatalog/commodityCatalogContent";
	}
}
