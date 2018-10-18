package com.ProcurementSystem.entity;

public class ReceiptDetails {
	private int receiptUniqueName;
	private int number;
	private Commodity commodity;
	private int quantity;
	private String description;
	private String unit;
	private String supplierPartNumber;
	private int preAcceptedAmount;
	private int preRejectedAmount;
	private int acceptedAmount;
	private int rejectedAmount;
	private int acceptedTotalAmount;
	private String acceptString;
	private int originalSystemReceiptDetailNumber;
	public int getReceiptUniqueName() {
		return receiptUniqueName;
	}
	public void setReceiptUniqueName(int receiptUniqueName) {
		this.receiptUniqueName = receiptUniqueName;
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
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getSupplierPartNumber() {
		return supplierPartNumber;
	}
	public void setSupplierPartNumber(String supplierPartNumber) {
		this.supplierPartNumber = supplierPartNumber;
	}
	public int getPreAcceptedAmount() {
		return preAcceptedAmount;
	}
	public void setPreAcceptedAmount(int preAcceptedAmount) {
		this.preAcceptedAmount = preAcceptedAmount;
	}
	public int getPreRejectedAmount() {
		return preRejectedAmount;
	}
	public void setPreRejectedAmount(int preRejectedAmount) {
		this.preRejectedAmount = preRejectedAmount;
	}
	public int getAcceptedAmount() {
		return acceptedAmount;
	}
	public void setAcceptedAmount(int acceptedAmount) {
		this.acceptedAmount = acceptedAmount;
	}
	public int getRejectedAmount() {
		return rejectedAmount;
	}
	public void setRejectedAmount(int rejectedAmount) {
		this.rejectedAmount = rejectedAmount;
	}
	public int getAcceptedTotalAmount() {
		return acceptedTotalAmount;
	}
	public void setAcceptedTotalAmount(int acceptedTotalAmount) {
		this.acceptedTotalAmount = acceptedTotalAmount;
	}
	public String getAcceptString() {
		return acceptString;
	}
	public void setAcceptString(String acceptString) {
		this.acceptString = acceptString;
	}
	public int getOriginalSystemReceiptDetailNumber() {
		return originalSystemReceiptDetailNumber;
	}
	public void setOriginalSystemReceiptDetailNumber(int originalSystemReceiptDetailNumber) {
		this.originalSystemReceiptDetailNumber = originalSystemReceiptDetailNumber;
	}
	
}
