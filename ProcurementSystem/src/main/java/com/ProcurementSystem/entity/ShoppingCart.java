package com.ProcurementSystem.entity;

import java.util.LinkedList;
import java.util.List;

public class ShoppingCart {
	private List<Commodity> commodities = new LinkedList<>();
	private double totalAmount;//总价
	private int totalQuantity;//总数量,用于显示购物车图标
	
	public List<Commodity> getCommodities() {
		return commodities;
	}
	public void setCommodities(List<Commodity> commodities) {
		this.commodities = commodities;
	}
	public double getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}
	public int getTotalQuantity() {
		return totalQuantity;
	}
	public void setTotalQuantity(int totalQuantity) {
		this.totalQuantity = totalQuantity;
	}
	
}
