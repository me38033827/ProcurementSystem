package com.ProcurementSystem.entity;

import java.util.ArrayList;

import org.springframework.core.annotation.Order;

public class ReceiptHeader {
	private	int	uniqueName	;
	private	Order	order	;
	private	ArrayList<ReceiptDetails>	items	;
	private	String	title	;
	private	String	String	;
	private	String	state	;
	private	int	originalSystemOrderNumber	;
	private	String	originalSystemOrderName	;
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
	public ArrayList<ReceiptDetails> getItems() {
		return items;
	}
	public void setItems(ArrayList<ReceiptDetails> items) {
		this.items = items;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getString() {
		return String;
	}
	public void setString(String string) {
		String = string;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getOriginalSystemOrderNumber() {
		return originalSystemOrderNumber;
	}
	public void setOriginalSystemOrderNumber(int originalSystemOrderNumber) {
		this.originalSystemOrderNumber = originalSystemOrderNumber;
	}
	public String getOriginalSystemOrderName() {
		return originalSystemOrderName;
	}
	public void setOriginalSystemOrderName(String originalSystemOrderName) {
		this.originalSystemOrderName = originalSystemOrderName;
	}
	
}
