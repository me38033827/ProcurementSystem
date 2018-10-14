package com.ProcurementSystem.entity;

import java.util.ArrayList;

import org.springframework.core.annotation.Order;

public class InvoiceHeader {
	private	int	uniqueName	;
	private	Order	order	;
	private	ArrayList<InvoiceDetails>	items	;
	private	String	type	;
	private	String	String	;
	private	int	supplierInvoiceNumber	;
	private	String	paymentType	;
	private	String	originalSystemName	;
	private	String	label	;
	private	String	paymentClause	;
	private	String	sendAddress	;
	private	String	workshop	;
	private	String	payeeAddress	;
	private	String	diliveryAddress	;
	private	double	amount	;
	private	double	maxDiscount	;
	private	String	targetString	;
	private	String	state	;
	public int getUniqueName() {
		return uniqueName;
	}
	public void setUniqueName(int uniqueName) {
		this.uniqueName = uniqueName;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public ArrayList<InvoiceDetails> getItems() {
		return items;
	}
	public void setItems(ArrayList<InvoiceDetails> items) {
		this.items = items;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getString() {
		return String;
	}
	public void setString(String string) {
		String = string;
	}
	public int getSupplierInvoiceNumber() {
		return supplierInvoiceNumber;
	}
	public void setSupplierInvoiceNumber(int supplierInvoiceNumber) {
		this.supplierInvoiceNumber = supplierInvoiceNumber;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	public String getOriginalSystemName() {
		return originalSystemName;
	}
	public void setOriginalSystemName(String originalSystemName) {
		this.originalSystemName = originalSystemName;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getPaymentClause() {
		return paymentClause;
	}
	public void setPaymentClause(String paymentClause) {
		this.paymentClause = paymentClause;
	}
	public String getSendAddress() {
		return sendAddress;
	}
	public void setSendAddress(String sendAddress) {
		this.sendAddress = sendAddress;
	}
	public String getWorkshop() {
		return workshop;
	}
	public void setWorkshop(String workshop) {
		this.workshop = workshop;
	}
	public String getPayeeAddress() {
		return payeeAddress;
	}
	public void setPayeeAddress(String payeeAddress) {
		this.payeeAddress = payeeAddress;
	}
	public String getDiliveryAddress() {
		return diliveryAddress;
	}
	public void setDiliveryAddress(String diliveryAddress) {
		this.diliveryAddress = diliveryAddress;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public double getMaxDiscount() {
		return maxDiscount;
	}
	public void setMaxDiscount(double maxDiscount) {
		this.maxDiscount = maxDiscount;
	}
	public String getTargetString() {
		return targetString;
	}
	public void setTargetString(String targetString) {
		this.targetString = targetString;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
}
