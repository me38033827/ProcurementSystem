package com.ProcurementSystem.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ProcurementSystem.common.NavTree;
import com.ProcurementSystem.common.NavTreeNode;
import com.ProcurementSystem.common.PageParams;
import com.ProcurementSystem.dao.IBuyerCommodityDao;
import com.ProcurementSystem.entity.Commodity;
import com.ProcurementSystem.entity.ShoppingCart;
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
		session.removeAttribute("sqmSession");
		return "main/main";
	}
	// P2P主页
		@RequestMapping(value = "test")
		public String test(HttpServletRequest request) {
			return "upStream/contract/createContract";
		}

	// P2P供应商主页
	@RequestMapping(value = "mainSupplier")
	public String mainSupplier(HttpServletRequest request) {
		request.setAttribute("pageOptions", service.getPageOptions("supplier"));
		return "main/mainSupplier";
	}

	// 转向商品目录主页
	@RequestMapping(value = "commodityCatalog")
	public String commodityCatalog(ModelMap map, @RequestParam(value = "currPage", required = false) String currPage,
			@RequestParam(value = "code", required = false) String code, HttpServletRequest request) {
		if(request.getSession().getAttribute("firstClass")==null){
			NavTree navTree = commodityService.generateCommodityNav();
			request.getServletContext().setAttribute("navTree", navTree);// 获得导航树
			ArrayList<NavTreeNode> firstClass = navTree.getNavClass(1);// 产生第一级商品导航
			map.put("firstClass", firstClass);
			request.getSession().setAttribute("firstClass", firstClass);//服务于主页搜索
		}
		if (code != null && code != "") {// 获得面包屑导航
			NavTree navTree = (NavTree)request.getServletContext().getAttribute("navTree");
			List<NavTreeNode> breadNav = navTree.getNavClassNames(code);
			map.put("breadNav", breadNav);
		}
		if (currPage == null || currPage.equals(""))
			currPage = 1 + ""; // 如果未指定请求页，则默认设置为第一页
		else if(currPage.equals("...")) {
			currPage = "2";
		}
		int temp = 0;
		try {
			temp = Integer.parseInt(currPage);
		} catch (Exception e) {
			return "other/error";
		}
		Commodity commodity = new Commodity();
		commodity.setSpsCode(code);
		PageParams<Commodity> pageParams = commodityService.searchCommodity(commodity, temp, 1);// 获得对应分类的商品,约束条件（分类、目录激活、SQM准入，用户组限制）
		map.put("pageParams", pageParams);
		//int commoditiesQuantity = commodityDao.getActivatedRowCount(commodity);// 获得商品总数量
		//map.put("commoditiesQuantity", commoditiesQuantity);
		map.put("code", code);// 保存状态
		System.out.println("总页数：" + pageParams.getTotalPages() + " 当前页：" + pageParams.getCurrPage());
		
		ShoppingCart shoppingCart = (ShoppingCart)request.getSession().getAttribute("shoppingCart");
		
		return "main/commodityCatalog";
	}
	
	// guided buying
	@RequestMapping(value = "guidedBuying")
	public String guidedBuying(ModelMap map, HttpServletRequest request,
			@RequestParam(value = "currPage", required = false) String currPage,
			@RequestParam(value = "code", required = false) String code) {
		if(request.getSession().getAttribute("firstClass")==null){
			NavTree navTree = commodityService.generateCommodityNav();
			request.getServletContext().setAttribute("navTree", navTree);// 获得导航树
			ArrayList<NavTreeNode> firstClass = navTree.getNavClass(1);// 产生第一级商品导航
			map.put("firstClass", firstClass);
			request.getSession().setAttribute("firstClass", firstClass);//服务于主页搜索
		}
		if (code != null && code != "") {// 获得面包屑导航
			NavTree navTree = (NavTree)request.getServletContext().getAttribute("navTree");
			List<NavTreeNode> breadNav = navTree.getNavClassNames(code);
			map.put("breadNav", breadNav);
		}
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
		PageParams<Commodity> pageParams = commodityService.searchCommodity(commodity, temp, 1);// 获得对应分类的商品,约束条件（分类、目录激活、SQM准入）
		map.put("pageParams", pageParams);
		map.put("commoditiesQuantity", pageParams.getRowCount());
		map.put("code", code);// 保存状态
		
		ShoppingCart shoppingCart = (ShoppingCart)request.getSession().getAttribute("shoppingCart");
		
		return "main/guidedBuying";
	}
	
	// guided commodity
	@RequestMapping(value = "guidedCommodity")
	public String guidedCommodity(ModelMap map, HttpServletRequest request,
			@RequestParam(value = "currPage", required = false) String currPage,
			@RequestParam(value = "code", required = false) String code) {
		if(request.getSession().getAttribute("firstClass")==null){
			NavTree navTree = commodityService.generateCommodityNav();
			request.getServletContext().setAttribute("navTree", navTree);// 获得导航树
			ArrayList<NavTreeNode> firstClass = navTree.getNavClass(1);// 产生第一级商品导航
			map.put("firstClass", firstClass);
			request.getSession().setAttribute("firstClass", firstClass);//服务于主页搜索
		}
		if (code != null && code != "") {// 获得面包屑导航
			NavTree navTree = (NavTree)request.getServletContext().getAttribute("navTree");
			List<NavTreeNode> breadNav = navTree.getNavClassNames(code);
			map.put("breadNav", breadNav);
		}
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
		PageParams<Commodity> pageParams = commodityService.searchCommodity(commodity, temp, 1);// 获得对应分类的商品,约束条件（分类、目录激活、SQM准入）
		PageParams.setPageSize(12);
		map.put("pageParams", pageParams);
		map.put("commoditiesQuantity", pageParams.getRowCount());
		map.put("code", code);// 保存状态
		return "downStream/commodityCatalog/guidedCommodity";
	}

	/**搜索商品*/
	@RequestMapping("search")
	public String multiFieldSearch(@RequestParam(value="content",required=false) String content,@RequestParam(value="currPage",required=false)String currPage,ModelMap map){
		int curr = 1;
		try {
			 curr = Integer.parseInt(currPage);
		} catch (Exception e) {
			curr = 1;
		}
		if(content == null || content.equals("按部件号、供应商名称或关键字搜索")) content="";
		PageParams<Commodity> pageParams = commodityService.multiFieldSearch(content,curr);
		map.put("pageParams",pageParams );
		map.put("content",content);
		return "main/commodityCatalogSearch";
	}
	/** Top50显示 */
	@RequestMapping(value = "top50")
	public String top50(@RequestParam(value = "currPage", required = false) String currPage, ModelMap map) {
		int curr = 1;
		try {
			curr = Integer.parseInt(currPage);
			if (curr < 1)
				curr = 1;
		} catch (Exception e) {
			curr = 1;
		}
		NavTreeNode node = new NavTreeNode();
		node.setName("Top50");
		List<NavTreeNode> breadNav = new LinkedList<>();
		breadNav.add(node);
		map.put("breadNav", breadNav);//面包屑导航
		PageParams<Commodity> pageParams = commodityService.getTop50(curr);
		map.put("pageParams", pageParams);
		return "downStream/commodityCatalog/guidedCommodityTop50";
	}
	/** 根据用户行为推荐 */
	@RequestMapping(value = "recommend")
	public String recommend(@RequestParam(value = "currPage", required = false) String currPage, ModelMap map,HttpServletRequest request) {
		int curr = 1;
		try {
			curr = Integer.parseInt(currPage);
			if (curr < 1)
				curr = 1;
		} catch (Exception e) {
			curr = 1;
		}
		NavTreeNode node = new NavTreeNode();
		node.setName("推荐产品");
		List<NavTreeNode> breadNav = new LinkedList<>();
		breadNav.add(node);
		map.put("breadNav", breadNav);
		Integer userId = (Integer)request.getSession().getAttribute("userUniqueName");
		PageParams<Commodity> pageParams = commodityService.getRecommend(curr,userId);
		map.put("pageParams", pageParams);
		return "downStream/commodityCatalog/guidedCommodityRecommend";
	}

}
