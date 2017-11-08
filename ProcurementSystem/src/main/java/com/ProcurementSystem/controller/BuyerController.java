package com.ProcurementSystem.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ProcurementSystem.common.NavTree;
import com.ProcurementSystem.common.PageParams;
import com.ProcurementSystem.common.NavTreeNode;
import com.ProcurementSystem.dao.IBuyerCommodityDao;
import com.ProcurementSystem.entity.Commodity;
import com.ProcurementSystem.service.BuyerCommodityCatalogService;
import com.ProcurementSystem.service.BuyerCommodityService;
import com.ProcurementSystem.service.SearchService;

@Controller
@RequestMapping(value = "buyer")
public class BuyerController {
	@Resource
	BuyerCommodityCatalogService commodityCatalogService;
	@Resource
	BuyerCommodityService commodityService;
	@Resource
	IBuyerCommodityDao commodityDao;
	@Resource
	SearchService service;

	// P2P主页
	@RequestMapping(value = "main")
	public String main(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("sqm");
		session.removeAttribute("spm");
		return "main/main";
	}

	// P2P供应商主页
	@RequestMapping(value = "mainSupplier")
	public String mainSupplier(HttpServletRequest request) {
		request.setAttribute("pageOptions",service.getPageOptions("supplier"));
		return "main/mainSupplier";
	}

	// 转向商品目录主页
	@RequestMapping(value = "commodityCatalog")
	public String commodityCatalog(ModelMap map, @RequestParam(value = "currPage", required = false) String currPage,
			@RequestParam(value = "code", required = false) String code, HttpServletRequest request) {
		NavTree navTree = commodityService.generateCommodityNav();
		request.getServletContext().setAttribute("navTree", navTree);// 获得导航树

		ArrayList<NavTreeNode> firstClass = navTree.getNavClass(1);// 产生第一级商品导航
		map.put("firstClass", firstClass);
		if (currPage == null || currPage.equals(""))
			currPage = 1 + ""; // 如果未指定请求页，则默认设置为第一页
		int temp = 0;
		try {
			temp = Integer.parseInt(currPage);
		} catch (Exception e) {
			return "other/error";
		}
		Commodity commodity = new Commodity();
		commodity.setSpsCode(code);
		PageParams<Commodity> pageParams = commodityService.searchCommodity(commodity, temp, 1);// 获得对应分类的商品
		map.put("pageParams", pageParams);
		int commoditiesQuantity = commodityDao.getActivatedRowCount(commodity);// 获得商品总数量
		map.put("commoditiesQuantity", commoditiesQuantity);
		if (code != null && code != "") {// 获得面包屑导航
			List<NavTreeNode> breadNav = navTree.getNavClassNames(code);
			map.put("breadNav", breadNav);
		}
		map.put("code", code);//保存状态
		System.out.println("总页数：" + pageParams.getTotalPages() + " 当前页：" + pageParams.getCurrPage());
		return "main/commodityCatalog";
	}
}
