package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IBuyerCommodityDao;
import com.ProcurementSystem.entity.Commodity;
import com.ProcurementSystem.entity.ShoppingCart;

@Service
public class BuyerShoppingCartService {
	@Resource
	IBuyerCommodityDao commodityDao;

	// 更新购物车中的商品对象,并维护购物车totalAmount属性
	public ShoppingCart updateShoppingCart(ShoppingCart shoppingCart) {
		ListIterator<Commodity> iterator = shoppingCart.getCommodities().listIterator();
		shoppingCart.setTotalAmount(0);// 重置购物车totalAmount
		shoppingCart.setTotalQuantity(0);
		while (iterator.hasNext()) {
			Commodity commodity = iterator.next();
			int buyQuantity = commodity.getBuyQuantity();// 获取该商品的购买数量，为了简化，省略购物车item类的编写
			
				
			Map<String, Object> searchParams = new HashMap<>();
			searchParams.put("commodity", commodity);
			List<Commodity> commodities = commodityDao.searchCommodity(searchParams);
			commodity = commodities.get(0);// 获得数据库中的商品对象

			commodity.setBuyQuantity(buyQuantity);// 设置商品购买数量
			double unitPrice = commodity.getUnitPrice();
			iterator.set(commodity);// 更新购物车中的商品对象

			shoppingCart.setTotalAmount(shoppingCart.getTotalAmount() + buyQuantity * unitPrice);// 维护购物车总价totalAmount
			shoppingCart.setTotalQuantity(shoppingCart.getTotalQuantity()+buyQuantity);//维护购物车总数量totalQUantity
		}
		return shoppingCart;
	}

	// 购物车更新总计
	public String updateShoppingCartBuyQuantity(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
		if (shoppingCart != null) {
			ListIterator<Commodity> iterator = shoppingCart.getCommodities().listIterator();
			shoppingCart.setTotalAmount(0);
			while (iterator.hasNext()) {
				Commodity commodity = (Commodity) iterator.next();
				String uniqueName = commodity.getUniqueName();
				String buyQuantity = request.getParameter("quantity_" + uniqueName);
				commodity.setBuyQuantity(Integer.parseInt(buyQuantity));// 维护商品数量
			}
		}

		return "downStream/commodityCatalog/commodityCatalogShoppingCart";
	}

	//删除购物车
	public boolean commodityCatalogDeleteShoppingCart(String[] uniqueNames, ShoppingCart shoppingCart) {
		for (String str : uniqueNames) {
			ListIterator<Commodity> iterator = shoppingCart.getCommodities().listIterator();
			while (iterator.hasNext()) {
				Commodity commodity = iterator.next();
				if (commodity.getUniqueName().equals(str)) {
					iterator.remove();// 删除结点
					break;
				}
			}
		}
		return true;
	}

	// 添加购物车
	public ShoppingCart commodityCatalogAddShoppingCart(Commodity commodity, ShoppingCart shoppingCart) {
		boolean flag = false;
		ListIterator<Commodity> iterator = shoppingCart.getCommodities().listIterator();
		while (iterator.hasNext()) {
			Commodity commodityTemp = iterator.next();
			
			if (commodityTemp.getUniqueName().equals(commodity.getUniqueName())) {
				commodityTemp.setBuyQuantity(commodity.getBuyQuantity() + commodityTemp.getBuyQuantity());// 维护商品数量
				flag = true;
				break;
			}
		} // 当商品重复时，只修改原商品数量
		if (flag == false)
			shoppingCart.getCommodities().add(commodity);// 当商品不重复时，直接添加至list
		updateShopping(shoppingCart);//更新商品总数量
		return shoppingCart;
	}

	public void updateShopping(ShoppingCart shoppingCart) {
		shoppingCart.setTotalQuantity(0);//商品总数量
		shoppingCart.setTotalAmount(0);//商品总价
		for(Commodity commodity : shoppingCart.getCommodities()){
			shoppingCart.setTotalQuantity(shoppingCart.getTotalQuantity()+commodity.getBuyQuantity());
			shoppingCart.setTotalAmount(shoppingCart.getTotalAmount()+commodity.getBuyQuantity()*commodity.getUnitPrice());
		}
	}
}
