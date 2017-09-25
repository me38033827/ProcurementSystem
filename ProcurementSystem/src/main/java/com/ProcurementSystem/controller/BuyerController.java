package com.ProcurementSystem.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ProcurementSystem.common.PageParams;
import com.ProcurementSystem.entity.Commodity;
import com.ProcurementSystem.service.BuyerCommodityCatalogService;
import com.ProcurementSystem.service.BuyerCommodityService;

@Controller
@RequestMapping(value = "buyer")
public class BuyerController {
	@Resource
	BuyerCommodityCatalogService commodityCatalogService;
	@Resource
	BuyerCommodityService commodityService;

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
	public String mainSupplier() {
		return "main/mainSupplier";
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
			return "other/error";
		}
		Commodity commodity = new Commodity();
		PageParams<Commodity> pageParams = commodityService.searchCommodity(commodity, temp);
		map.put("pageParams", pageParams);
		return "main/commodityCatalog";
	}
}
