package com.ProcurementSystem.entity;

import java.util.ArrayList;

public class OrderHeader {
	private	int	uniqueName	;
	private	User	consignor	;
	private	ArrayList<OrderDetails>	items	;
	private	String	title	;
	private	String	procureOperation	;
	private	String	delayProcureString	;
	private	String	relatedProject	;
	private	String	isCloseOrder	;
	private	String	country	;
	private	String	originalSystemName	;
	private	String	label	;
	private	String	diliveryAddress	;
	private	String	diliveryString	;
	private	String	comment	;
	private	String	isAccessibleToSuppiler	;
	private	String	accessory	;
	private	String	approveState	;
	private	String	createString	;
	private	String	isBuyingRequisition   	;
	private	double	amount	;
	private	String	supplierOrderMethod	;
	public int getUniqueName() {
		return uniqueName;
	}
	public void setUniqueName(int uniqueName) {
		this.uniqueName = uniqueName;
	}
	public User getConsignor() {
		return consignor;
	}
	public void setConsignor(User consignor) {
		this.consignor = consignor;
	}
	public ArrayList<OrderDetails> getItems() {
		return items;
	}
	public void setItems(ArrayList<OrderDetails> items) {
		this.items = items;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getProcureOperation() {
		return procureOperation;
	}
	public void setProcureOperation(String procureOperation) {
		this.procureOperation = procureOperation;
	}
	public String getDelayProcureString() {
		return delayProcureString;
	}
	public void setDelayProcureString(String delayProcureString) {
		this.delayProcureString = delayProcureString;
	}
	public String getRelatedProject() {
		return relatedProject;
	}
	public void setRelatedProject(String relatedProject) {
		this.relatedProject = relatedProject;
	}
	public String getIsCloseOrder() {
		return isCloseOrder;
	}
	public void setIsCloseOrder(String isCloseOrder) {
		this.isCloseOrder = isCloseOrder;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
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
	public String getDiliveryAddress() {
		return diliveryAddress;
	}
	public void setDiliveryAddress(String diliveryAddress) {
		this.diliveryAddress = diliveryAddress;
	}
	public String getDiliveryString() {
		return diliveryString;
	}
	public void setDiliveryString(String diliveryString) {
		this.diliveryString = diliveryString;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getIsAccessibleToSuppiler() {
		return isAccessibleToSuppiler;
	}
	public void setIsAccessibleToSuppiler(String isAccessibleToSuppiler) {
		this.isAccessibleToSuppiler = isAccessibleToSuppiler;
	}
	public String getAccessory() {
		return accessory;
	}
	public void setAccessory(String accessory) {
		this.accessory = accessory;
	}
	public String getApproveState() {
		return approveState;
	}
	public void setApproveState(String approveState) {
		this.approveState = approveState;
	}
	public String getCreateString() {
		return createString;
	}
	public void setCreateString(String createString) {
		this.createString = createString;
	}
	public String getIsBuyingRequisition() {
		return isBuyingRequisition;
	}
	public void setIsBuyingRequisition(String isBuyingRequisition) {
		this.isBuyingRequisition = isBuyingRequisition;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getSupplierOrderMethod() {
		return supplierOrderMethod;
	}
	public void setSupplierOrderMethod(String supplierOrderMethod) {
		this.supplierOrderMethod = supplierOrderMethod;
	}
	
	
}
