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
import com.ProcurementSystem.entity.Login;
import com.ProcurementSystem.entity.Supplier;
import com.ProcurementSystem.service.BuyerCommodityCatalogService;
import com.ProcurementSystem.service.SupplierCommodityCatalogService;

@Controller
@RequestMapping(value = "supplier/commodityCatalog/")
public class SupplierCommodityCatalogController {
	@Resource
	BuyerCommodityCatalogService commodityCatalogService;
	@Resource
	SupplierCommodityCatalogService supplierCommodityCatalogService;
	/** 转向商品目录创建-详细信息页 */
	@RequestMapping(value = "commodityCatalogCreateDetail")
	public String commodityCatalogCreateDetail(HttpServletRequest request) {
		String supplierUser = "Brown";
		HttpSession session = request.getSession();
		session.setAttribute("supplierUser", supplierUser);// 模拟登录用户
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String createDate = df.format(new Date());
		session.setAttribute("createDate", createDate);// 产生商品目录创建时间
		return "supplier/commodityCatalog/commodityCatalogCreateDetail";
	}

	/** 保存商品目录创建-详细信息页信息,转向商品目录创建-订购页 */
	@RequestMapping(value = "commodityCatalogCreatePurchase")
	public String commodityCatalogCreateDetailSave(HttpServletRequest request, @Valid CommodityCatalog commodityCatalog,
			BindingResult result, ModelMap map) {
		if (result.hasErrors()) {// 数据校验
			List<FieldError> errorList = result.getFieldErrors();
			for (FieldError error : errorList) {
				System.out.println(error.getField() + "*" + error.getDefaultMessage());
				map.put("Error_" + error.getField(), error.getDefaultMessage());
			}
			return "supplier/commodityCatalog/commodityCatalogCreateDetail";
		}
		HttpSession session = request.getSession();
		commodityCatalog.setType("1");// 设置商品目录为supplie上传
		session.setAttribute("commodityCatalog", commodityCatalog);
		return "supplier/commodityCatalog/commodityCatalogCreatePurchase";
	}

	/** 保存商品目录-订购页信息，并转向商品目录-内容页 */
	@RequestMapping(value = "commodityCatalogCreateContent")
	public String commodityCatalogCreatePurchase(@RequestParam(value = "isDisplayed") String isDisplayed,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		CommodityCatalog commodityCatalog = (CommodityCatalog) session.getAttribute("commodityCatalog");
		commodityCatalog.setIsDisplayed(isDisplayed);// 设置isDisplayed
		session.setAttribute("commodityCatalog", commodityCatalog);
		return "supplier/commodityCatalog/commodityCatalogCreateContent";
	}

	/** 上传文件，解析，验证，并持久化储存 */
	@RequestMapping(value = "commodityCatalogValidateAndSave")
	public String commodityCatalogValidateAndSave(@RequestParam("file") MultipartFile file,
			HttpServletRequest request) {
		String uploadUrl = request.getSession().getServletContext().getRealPath("/") + "upload/supplier/";
		HttpSession session = request.getSession();
		CommodityCatalog commodityCatalog = (CommodityCatalog) session.getAttribute("commodityCatalog");// 从session中获得commodityCatalog对象
		//Login login = (Login)request.getSession().getAttribute("loginInfo");
		//需要修改
		Supplier supplier = new Supplier();
		supplier.setUniqueName(10000023);
		supplier.setName("惠普（北京）");
		commodityCatalog.setSupplier(supplier);//添加商品目录中的供应商信息
		commodityCatalog.setVersion("版本1");
		
		
		
		commodityCatalogService.commodityCatalogUpload(file, uploadUrl, commodityCatalog);// 保存上传的文件
		commodityCatalogService.insertCommodityCatalog(commodityCatalog);// 持久化存储商品目录
		System.out.println("商品目录唯一标识:" + commodityCatalog.getUniqueName());
		commodityCatalogService.commodityCatalogAnalyze(commodityCatalog, uploadUrl , file.getOriginalFilename());// 解析文件，持久化存储商品
		request.setAttribute("commodityCatalog", commodityCatalog);
		//转向商品目录列表页
		return "redirect:/supplier/commodityCatalog/commodityCatalogList";
	}

	/** 转向商品目录列表页,显示全部supplier上传的商品目录 */
	@RequestMapping(value = "commodityCatalogList")
	public String commodityCatalogList(HttpServletRequest request) {
		CommodityCatalog commodityCatalog = new CommodityCatalog();
		commodityCatalog.setType("1");
		List<CommodityCatalog> commodityCatalogs = supplierCommodityCatalogService.searchCommodityCatalog(commodityCatalog);//查询所有由supplier上传的商品目录
		request.setAttribute("commodityCatalogs", commodityCatalogs);
		return "supplier/commodityCatalog/commodityCatalogList";
	}
	
	/**转向商品目录编辑-详细信息页*/
	@RequestMapping(value="commodityCatalogEditDetail")
	public String commodityCatalogEditDetail(@RequestParam("uniqueName")String uniqueName,HttpServletRequest request){
		CommodityCatalog commodityCatalog = new CommodityCatalog();
		commodityCatalog.setUniqueName(uniqueName);
		List<CommodityCatalog> commodityCatalogs = supplierCommodityCatalogService.searchCommodityCatalog(commodityCatalog);
		commodityCatalog = commodityCatalogs.get(0);
		HttpSession session = request.getSession();
		session.setAttribute("commodityCatalog",commodityCatalog);
		return "supplier/commodityCatalog/commodityCatalogEditDetail";
	}
	/**转向商品目录编辑-内容页*/
	@RequestMapping(value="commodityCatalogEditContent")
	public String commodityCatalogEditContent(@RequestParam(value="description")String description,HttpServletRequest request){
		HttpSession session = request.getSession();
		CommodityCatalog commodityCatalog = (CommodityCatalog)session.getAttribute("commodityCatalog");
		commodityCatalog.setDescription(description);
		session.setAttribute("commodityCatalog", commodityCatalog);
		return "supplier/commodityCatalog/commodityCatalogEditContent";
	}
	/**转向商品目录编辑-订购页*/
	@RequestMapping(value="commodityCatalogEditPurchase")
	public String commodityCatalogEdit(){
		return "supplier/commodityCatalog/commodityCatalogEditPurchase";
	}
	@RequestMapping(value="commodityCatalogEditValidateAndSave")
	public String commodityCatalogEditValidateAndSave(HttpServletRequest request,@RequestParam(value="isDisplayed")String isDisplayed){
		HttpSession session = request.getSession();
		CommodityCatalog commodityCatalog = (CommodityCatalog)session.getAttribute("commodityCatalog");
		commodityCatalog.setIsDisplayed(isDisplayed);
		supplierCommodityCatalogService.updateCommodityCatalog(commodityCatalog);
		return "redirect:/supplier/commodityCatalog/commodityCatalogList";
	}
}
