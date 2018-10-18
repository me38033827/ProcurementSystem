package com.ProcurementSystem.entity;

public class OrderDetails {
	private	int	orderUniqueName	;
	private	int	uniqueName	;
	private	Commodity	commodity	;
	private	String	description	;
	private	int	amount	;
	private	String	unit	;
	private	double	price	;
	private	double	discount	;
	private	double	netAmount	;
	private	double	cost	;
	private	double	taxAmount	;
	private	double	amountMoney	;
	public int getOrderUniqueName() {
		return orderUniqueName;
	}
	public void setOrderUniqueName(int orderUniqueName) {
		this.orderUniqueName = orderUniqueName;
	}
	public int getUniqueName() {
		return uniqueName;
	}
	public void setUniqueName(int uniqueName) {
		this.uniqueName = uniqueName;
	}
	public Commodity getCommodity() {
		return commodity;
	}
	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public double getNetAmount() {
		return netAmount;
	}
	public void setNetAmount(double netAmount) {
		this.netAmount = netAmount;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	public double getTaxAmount() {
		return taxAmount;
	}
	public void setTaxAmount(double taxAmount) {
		this.taxAmount = taxAmount;
	}
	public double getAmountMoney() {
		return amountMoney;
	}
	public void setAmountMoney(double amountMoney) {
		this.amountMoney = amountMoney;
	}
	
}
