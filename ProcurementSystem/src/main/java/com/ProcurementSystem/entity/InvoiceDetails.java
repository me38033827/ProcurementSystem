package com.ProcurementSystem.entity;

public class InvoiceDetails {
	private int invoiceuUniqueName;
	private int number;
	private Commodity commodity;
	private String description;
	private int amount;
	private String unit;
	private double price;
	private double cost;
	private double discount;
	private double amountMoney;
	private double taxAmount;
	private double grossAmount;
	private String String;

	public int getInvoiceuUniqueName() {
		return invoiceuUniqueName;
	}

	public void setInvoiceuUniqueName(int invoiceuUniqueName) {
		this.invoiceuUniqueName = invoiceuUniqueName;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
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

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public double getAmountMoney() {
		return amountMoney;
	}

	public void setAmountMoney(double amountMoney) {
		this.amountMoney = amountMoney;
	}

	public double getTaxAmount() {
		return taxAmount;
	}

	public void setTaxAmount(double taxAmount) {
		this.taxAmount = taxAmount;
	}

	public double getGrossAmount() {
		return grossAmount;
	}

	public void setGrossAmount(double grossAmount) {
		this.grossAmount = grossAmount;
	}

	public String getString() {
		return String;
	}

	public void setString(String string) {
		String = string;
	}

}
