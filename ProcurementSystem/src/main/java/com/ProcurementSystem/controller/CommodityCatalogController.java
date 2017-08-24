package com.ProcurementSystem.controller;

import java.util.Iterator;
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

import com.ProcurementSystem.common.PageParams;
import com.ProcurementSystem.entity.Commodity;
import com.ProcurementSystem.entity.CommodityCatalog;
import com.ProcurementSystem.entity.ShoppingCart;
import com.ProcurementSystem.entity.Supplier;
import com.ProcurementSystem.service.CommodityCatalogService;
import com.ProcurementSystem.service.CommodityService;

@Controller
@RequestMapping(value = "commodityCatalog")
public class CommodityCatalogController {
	@Resource
	CommodityCatalogService commodityCatalogService;
	@Resource
	CommodityService commodityService;

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
	public String commodityCatalogUpload(HttpServletRequest request, @Valid CommodityCatalog commodityCatalog,
			BindingResult result, ModelMap map) {
		// 数据校验
		if (result.hasErrors()) {
			List<FieldError> errorList = result.getFieldErrors();
			for (FieldError error : errorList) {
				System.out.println(error.getField() + "*" + error.getDefaultMessage());
				map.put("ERR_" + error.getField(), error.getDefaultMessage());
			}
			return "downStream/commodityCatalog/commodityCatalogCreate";
		}

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
		commodityCatalogService.commodityCatalogUpload(file, uploadUrl);// 保存上传的文件
		CommodityCatalog commodityCatalog = (CommodityCatalog) session.getAttribute("commodityCatalog");
		commodityCatalogService.insertCommodityCatalog(commodityCatalog);// 持久化存储商品目录
		System.out.println("商品目录唯一标识:" + commodityCatalog.getUniqueName());
		commodityCatalogService.commodityCatalogAnalyze(commodityCatalog, uploadUrl + file.getOriginalFilename());// 解析文件，持久化存储商品
		request.setAttribute("commodityCatalog", commodityCatalog);
		// 获取当前上传目录内容，准备在前端显示
		return "downStream/commodityCatalog/commodityCatalogContent";
	}

	// 转向商品目录列表页
	@RequestMapping(value = "commodityCatalogList")
	public String commodityCatalogList(HttpServletRequest request) {
		List<CommodityCatalog> commodityCatalogs = commodityCatalogService.getAllCommodityCatalogs();
		request.setAttribute("commodityCatalogs", commodityCatalogs);
		return "downStream/commodityCatalog/commodityCatalogList";
	}

	// 商品目录页搜索功能
	@RequestMapping(value = "commodityCatalogListSearch")
	public String commodityCatalogListSearch(@RequestParam(value = "state") String state, HttpServletRequest request) {
		CommodityCatalog commodityCatalog = new CommodityCatalog();
		if (state.equals("已激活") || state.equals("已停用")) {
			commodityCatalog.setIsActivated(state);
		}
		List<CommodityCatalog> commodityCatalogs = commodityCatalogService.searchCommodityCatalog(commodityCatalog);
		request.setAttribute("commodityCatalogs", commodityCatalogs);
		return "downStream/commodityCatalog/commodityCatalogList";
	}

	// 转向选择供应商页面
	@RequestMapping(value = "commodityCatalogCreateChooseSupplier")
	public String commodityCatalogCreateChooseSupplier() {
		return "downStream/commodityCatalog/commodityCatalogCreateChooseSupplier";
	}

	// 商品目录搜索供应商
	@RequestMapping(value = "commodityCatalogCreateSearchSupplier")
	public String commodityCatalogCreateChooseSupplierSearch(Supplier supplier, HttpServletRequest request) {
		// List<Supplier> suppliers = supplierService.searchSupplier(supplier);
		return "downStream/commmodityCatalog/commodityCatalogCreateChooseSupplier";
	}

	// 显示商品目录内容
	@RequestMapping(value = "showCommodityCatalogContent")
	public String showCommodityCatalogContent(ModelMap map, @RequestParam(value = "uniqueName") String uniqueName) {
		CommodityCatalog commodityCatalog = new CommodityCatalog();
		commodityCatalog.setUniqueName(uniqueName);
		List<CommodityCatalog> commodityCatalogs = commodityCatalogService.searchCommodityCatalog(commodityCatalog);
		Iterator<CommodityCatalog> iterator = commodityCatalogs.listIterator();
		commodityCatalog = iterator.next();
		map.put("commodityCatalog", commodityCatalog);
		return "downStream/commodityCatalog/commodityCatalogContent";
	}

	// 在线编辑商品目录
	@RequestMapping(value = "commodityCatalogContentEdit")
	public String commodityCatalogContentEdit(@RequestParam(value = "uniqueName") String uniqueName, ModelMap map) {
		Commodity commodity = new Commodity();
		commodity.setUniqueName(Integer.parseInt(uniqueName));
		PageParams<Commodity> pageParams = commodityService.searchCommodity(commodity, 1);
		Iterator<Commodity> iterator = pageParams.getData().iterator();
		commodity = iterator.next();
		map.put("commodity", commodity);
		return "downStream/commodityCatalog/commodityCatalogContentEdit";
	}

	// 在线修改商品目录内容
	@RequestMapping(value = "commodityCatalogContentModify")
	public String commodityCatalogModify(Commodity commodity, ModelMap map) {
		commodity.getContract().setUniqueName(commodity.getContract().getUniqueName().substring(1));
		commodityService.updateCommodity(commodity);
		return "redirect:/commodityCatalog/showCommodityCatalogContent?uniqueName="
				+ commodity.getCommodityCatalog().getUniqueName();// 控制器中的跳转
	}

	// 转向商品目录版本比较野
	@RequestMapping(value = "commodityCatalogCompare")
	public String commodityCatalogCompare() {
		return "downStream/commodityCatalog/commodityCatalogCompare";
	}

	// 转向商品目录激活页
	@RequestMapping(value = "commodityCatalogActivate")
	public String commodityCatalogActivate() {
		return "downStream/commodityCatalog/commodityCatalogActivate";
	}

	// 转向商品目录主页
	@RequestMapping(value = "commodityCatalog")
	public String commodityCatalog(ModelMap map, @RequestParam(value = "currPage", required = false) String currPage) {
		if (currPage == null || currPage.equals(""))
			currPage = 1 + ""; // 如果未指定请求页，则默认设置为第一页
		int temp = 0;
		try {
			temp = Integer.parseInt(currPage);
		} catch (Exception e) {
			// TODO: handle exception
			return "other/error";
		}
		Commodity commodity = new Commodity();
		PageParams<Commodity> pageParams = commodityService.searchCommodity(commodity, temp);
		map.put("pageParams", pageParams);
		return "downStream/commodityCatalog/commodityCatalog";
	}

	// 添加购物车
	@RequestMapping(value="commodityCatalogAddShoppingCart")
	public String commodityCatalogAddShoppingCart(HttpServletRequest request,@RequestParam(value="uniqueName")String uniqueName,@RequestParam(value="quantity") String quantity){
		HttpSession session = request.getSession();
		ShoppingCart shoppingCart = (ShoppingCart)session.getAttribute("shoppingCart");
		if(shoppingCart == null) shoppingCart = new ShoppingCart();
		Commodity commodity = new Commodity();
		try{
			commodity.setUniqueName(Integer.parseInt(uniqueName));
			commodity.setBuyQuantity(Integer.parseInt(quantity));
		}catch(Exception e){
			
		}
		//当商品重复时，只修改原商品数量
		boolean flag = false;
		for(Commodity c : shoppingCart.getCommodities()){
			if(c.getUniqueName() == commodity.getUniqueName()){
				commodity.setBuyQuantity(commodity.getBuyQuantity()+c.getBuyQuantity());
				flag = true;
				break;
			}
		}
		if(flag == false) shoppingCart.getCommodities().add(commodity);
		session.setAttribute("shoppingCart",shoppingCart);
		session.setAttribute("shoppingCartSize", shoppingCart.getCommodities().size());
		System.out.println(shoppingCart.getCommodities().size());
		return "redirect:/commodityCatalog/commodityCatalog ";
	}
}
