package com.ProcurementSystem.controller;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import javax.annotation.Resource;
import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ProcurementSystem.common.PageParams;
import com.ProcurementSystem.entity.Commodity;
import com.ProcurementSystem.entity.CommodityCatalog;
import com.ProcurementSystem.entity.ShoppingCart;
import com.ProcurementSystem.entity.Supplier;
import com.ProcurementSystem.service.BuyerCommodityCatalogService;
import com.ProcurementSystem.service.BuyerCommodityService;
import com.ProcurementSystem.service.BuyerShoppingCartService;

@Controller
@RequestMapping(value = "commodityCatalog")
public class BuyerCommodityCatalogController {
	@Resource
	BuyerCommodityCatalogService commodityCatalogService;
	@Resource
	BuyerCommodityService commodityService;
	@Resource
	BuyerShoppingCartService shoppingCartService;

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

	// 保存商品目录基本信息，上传商品目录
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
		commodityCatalog.setVersion("版本1");// 暂时设置默认为版本1，之后需要修改！！！
		session.setAttribute("commodityCatalog", commodityCatalog);
		return "downStream/commodityCatalog/commodityCatalogUpload";
	}

	// 解析商品目录，并进行持久化存储;转向商品目录内容
	@RequestMapping(value = "commodityCatalogAnalyze")
	public String commodityCatalogUpload(@RequestParam("file") MultipartFile file,
			@RequestParam(value="imageFile" , required = false) MultipartFile imageFile, HttpServletRequest request) {
		String uploadUrl = request.getSession().getServletContext().getRealPath("/") + "upload/";//upload未上传文件的根目录
		HttpSession session = request.getSession();
		CommodityCatalog commodityCatalog = (CommodityCatalog) session.getAttribute("commodityCatalog");//获得准备上传的商品目录文件
		commodityCatalogService.commodityCatalogUpload(file, uploadUrl, commodityCatalog);// 保存上传的商品目录文件至根目录upload文件夹下
		commodityCatalog.setType("0");// 设置商品目录为buyer上传
		commodityCatalogService.insertCommodityCatalog(commodityCatalog);// 持久化存储商品目录
		System.out.println("商品目录唯一标识:" + commodityCatalog.getUniqueName());//获得商品目录的uniqueName
		commodityCatalogService.commodityCatalogUploadImages(imageFile,uploadUrl+commodityCatalog.getUniqueName()+"/");// 保存图片的压缩包文至以商品目录uniqueName命名的文件下，并解压
		commodityCatalogService.commodityCatalogAnalyze(commodityCatalog, uploadUrl,  file.getOriginalFilename());// 解析文件，持久化存储商品
		request.setAttribute("commodityCatalog", commodityCatalog);
		// 获取当前上传目录内容，准备在前端显示，转向
		return "redirect:/commodityCatalog/showCommodityCatalogContent?uniqueName=" + commodityCatalog.getUniqueName();
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
		/** 从数据库中提取对应的商品对象 */
		Commodity commodity = new Commodity();
		commodity.setUniqueName(uniqueName);
		PageParams<Commodity> pageParams = commodityService.searchCommodity(commodity, 1);
		Iterator<Commodity> iterator = pageParams.getData().iterator();
		commodity = iterator.next();
		/** 获得商品的验证信息 */
		map = commodityService.validateCommodityAndGetMessages(commodity, map);
		map.put("commodity", commodity);
		return "downStream/commodityCatalog/commodityCatalogContentEdit";
	}

	// 保存在线修改商品目录内容
	@RequestMapping(value = "commodityCatalogContentModify")
	public String commodityCatalogModify(Commodity commodity, ModelMap map) {
		commodity.getContract().setUniqueName(commodity.getContract().getUniqueName().substring(1));
		map = commodityService.validateCommodityAndGetMessages(commodity, map);// 获得商品验证信息
		if (!(boolean) map.get("result")) {
			commodity.setIsChecked("FALSE");
		} else {
			commodity.setIsChecked("TRUE");
		} // 更改商品验证字段
		commodityService.updateCommodity(commodity);
		commodityCatalogService.validate(commodity.getCommodityCatalog().getUniqueName());
		return "redirect:/commodityCatalog/showCommodityCatalogContent?uniqueName="
				+ commodity.getCommodityCatalog().getUniqueName();// 控制器中的跳转
	}

	// 转向商品目录版本比较页
	@RequestMapping(value = "commodityCatalogCompare")
	public String commodityCatalogCompare() {
		return "downStream/commodityCatalog/commodityCatalogCompare";
	}

	// 转向商品目录激活页
	@RequestMapping(value = "commodityCatalogActivate")
	public String commodityCatalogActivate(@RequestParam(value = "uniqueName") String uniqueName, ModelMap map) {
		CommodityCatalog commodityCatalog = new CommodityCatalog();
		commodityCatalog.setUniqueName(uniqueName);
		List<CommodityCatalog> commodityCatalogs = commodityCatalogService.searchCommodityCatalog(commodityCatalog);
		commodityCatalog = commodityCatalogs.get(0);
		map.put("commodityCatalog", commodityCatalog);
		return "downStream/commodityCatalog/commodityCatalogActivate";
	}

	// 激活商品目录，并持久化存储
	@RequestMapping(value = "commodityCatalogActivateSave")
	public String commodityCatalogActivateSave(@RequestParam(value = "uniqueName") String uniqueName) {
		boolean isValidated = commodityCatalogService.validate(uniqueName);
		if (isValidated) {
			CommodityCatalog commodityCatalog = new CommodityCatalog();
			commodityCatalog.setUniqueName(uniqueName);
			commodityCatalog.setIsActivated("已激活");
			commodityCatalogService.setIsActivated(commodityCatalog);
		}
		return "redirect: /ProcurementSystem/commodityCatalog/commodityCatalogActivate?uniqueName=" + uniqueName;
	}

	// 停用商品目录，并进行持久化存储
	@RequestMapping(value = "commodityCatalogStopSave")
	public String commodityCatalogStopSave(@RequestParam(value = "uniqueName") String uniqueName) {
		CommodityCatalog commodityCatalog = new CommodityCatalog();
		commodityCatalog.setUniqueName(uniqueName);
		List<CommodityCatalog> commodityCatalogs = commodityCatalogService.searchCommodityCatalog(commodityCatalog);
		commodityCatalog = commodityCatalogs.get(0);
		if (commodityCatalog.getIsActivated().equals("已激活")) {
			commodityCatalog.setUniqueName(uniqueName);
			commodityCatalog.setIsActivated("已停用");
			commodityCatalogService.setIsActivated(commodityCatalog);
		}
		return "redirect: /ProcurementSystem/commodityCatalog/commodityCatalogActivate?uniqueName=" + uniqueName;
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

	// 显示购物车内容
	@RequestMapping(value = "commodityCatalogShoppingCart")
	public String commodityCatalogShoppingCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
		if (shoppingCart != null) {
			shoppingCart = shoppingCartService.updateShoppingCart(shoppingCart);// 更新购物车，将商品类填充完整
		}
		session.setAttribute("shoppingCart", shoppingCart);
		return "downStream/commodityCatalog/commodityCatalogShoppingCart";
	}

	// 添加购物车，添加的商品只包含uniqueName和buyQuantity属性
	@RequestMapping(value = "commodityCatalogAddShoppingCart")
	public @ResponseBody String commodityCatalogAddShoppingCart(HttpServletRequest request,
			@RequestParam(value = "uniqueName") String uniqueName, @RequestParam(value = "quantity") String quantity) {
		HttpSession session = request.getSession();
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");// 获得购物车
		if (shoppingCart == null)
			shoppingCart = new ShoppingCart();
		Commodity commodity = new Commodity();
		try {
			commodity.setUniqueName(uniqueName);
			commodity.setBuyQuantity(Integer.parseInt(quantity));
		} catch (Exception e) {

		} // 获得要添加的商品对象
		shoppingCart = shoppingCartService.commodityCatalogAddShoppingCart(commodity, shoppingCart);// 添加商品
		session.setAttribute("shoppingCart", shoppingCart);
		return shoppingCart.getCommodities().size() + "";
	}

	// 购物车删除
	@RequestMapping(value = "commodityCatalogDeleteShoppingCart")
	public String commodityCatalogDeleteShoppingCart(@RequestParam("commodityUniqueNames") String[] uniqueNames,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");// 获得购物车
		if (shoppingCart != null) {
			shoppingCartService.commodityCatalogDeleteShoppingCart(uniqueNames, shoppingCart);// 删除商品
		}
		return "redirect:/commodityCatalog/commodityCatalogShoppingCart";
	}

	// 购物车更新总计
	@RequestMapping("updateShoppingCartBuyQuantity")
	public String updateShoppingCartBuyQuantity(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
		if (shoppingCart != null) {
			ListIterator<Commodity> iterator = shoppingCart.getCommodities().listIterator();
			while (iterator.hasNext()) {
				Commodity commodity = (Commodity) iterator.next();
				String uniqueName = commodity.getUniqueName();
				String buyQuantity = request.getParameter("buyQuantity_" + uniqueName);
				commodity.setBuyQuantity(Integer.parseInt(buyQuantity));// 维护商品数量
			}
		}
		return "redirect:/commodityCatalog/commodityCatalogShoppingCart";
	}

	// 转向商品信息详情页
	@RequestMapping(value = "commodityInfo")
	public String commodityInfo(@RequestParam(value = "uniqueName") String uniqueName,
			@RequestParam(value = "currPage", required = false) String currPage, ModelMap map) {
		Commodity commodity = new Commodity();
		commodity.setUniqueName(uniqueName);
		PageParams<Commodity> commodities = commodityService.searchCommodity(commodity, 1);
		commodity = commodities.getData().get(0);
		map.put("commodity", commodity);
		map.put("currPage", currPage);
		return "downStream/commodityCatalog/commodityInfo";
	}

}
