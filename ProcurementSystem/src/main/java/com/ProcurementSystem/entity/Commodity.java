package com.ProcurementSystem.entity;

public class Commodity {
	private	int	uniqueName	;
	private	Supplier	supplier	;
	private	Contract	contract	;
	private	float	price 	;
	private	String	supplierPartNumber	;
	private	String	manufacturer	;
	private	String	 manufacturerPartNumber	;
	private	String	tiemLeft	;
	private	String	companyCode	;
	private	String	contractNumber	;
	private	String	GCMEmailAdress	;
	private	String	description	;
	private	String	materialGroup	;
	private	String	commodityType	;
	private	int	isApproved	;
	public int getUniqueName() {
		return uniqueName;
	}
	public void setUniqueName(int uniqueName) {
		this.uniqueName = uniqueName;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public Contract getContract() {
		return contract;
	}
	public void setContract(Contract contract) {
		this.contract = contract;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getSupplierPartNumber() {
		return supplierPartNumber;
	}
	public void setSupplierPartNumber(String supplierPartNumber) {
		this.supplierPartNumber = supplierPartNumber;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getManufacturerPartNumber() {
		return manufacturerPartNumber;
	}
	public void setManufacturerPartNumber(String manufacturerPartNumber) {
		this.manufacturerPartNumber = manufacturerPartNumber;
	}
	public String getTiemLeft() {
		return tiemLeft;
	}
	public void setTiemLeft(String tiemLeft) {
		this.tiemLeft = tiemLeft;
	}
	public String getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}
	public String getContractNumber() {
		return contractNumber;
	}
	public void setContractNumber(String contractNumber) {
		this.contractNumber = contractNumber;
	}
	public String getGCMEmailAdress() {
		return GCMEmailAdress;
	}
	public void setGCMEmailAdress(String gCMEmailAdress) {
		GCMEmailAdress = gCMEmailAdress;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMaterialGroup() {
		return materialGroup;
	}
	public void setMaterialGroup(String materialGroup) {
		this.materialGroup = materialGroup;
	}
	public String getCommodityType() {
		return commodityType;
	}
	public void setCommodityType(String commodityType) {
		this.commodityType = commodityType;
	}
	public int getIsApproved() {
		return isApproved;
	}
	public void setIsApproved(int isApproved) {
		this.isApproved = isApproved;
	}
	
}
