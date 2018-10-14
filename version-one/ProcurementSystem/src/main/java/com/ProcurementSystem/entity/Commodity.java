package com.ProcurementSystem.entity;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;

public class Commodity {

	private String uniqueName;

	private Supplier supplier;
	private Contract contract;
	private String contractTempId;//临时字段
	private CommodityCatalog commodityCatalog;
	private double unitPrice;// 基本类型是否都设置成String比较好
	private String supplierPartId;
	private String manufacturerName;
	private String manufacturerPartId;
	private String manufacturerUrl;
	private String timeLeft;
	private String companyCode;
	@Email(message = "错误：邮箱格式不正确。例如：123@163.com")
	private String gcmEmailAddress;
	private String itemDescription;
	private String materialGroup;
	private String commodityType;
	private String isApproved;
	private String spscCode;
	private String unitOfMeasure;
	private String leadTime;
	private double marketPrice;
	@Pattern(regexp = "([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8])))", message = "错误：日期格式不正确。例如:2017-10-10")
	private String effectiveDate;
	@Pattern(regexp = "([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8])))", message = "错误：日期格式不正确。例如:2017-10-10")
	private String expirationDate;
	private String shortName;
	private String image;
	private String thumbnail;
	@Pattern(regexp = "false|true|TRUE|FALSE", message = "错误：格式为：false|true|TRUE|FALSE")
	private String isHazardousMaterials;
	@Pattern(regexp = "false|true|TRUE|FALSE", message = "错误：格式为：false|true|TRUE|FALSE")
	private String isGreen;
	private String supplierPartAuxiliaryId;
	private int buyQuantity;
	private String isChecked;

	public String getIsChecked() {
		return isChecked;
	}

	public void setIsChecked(String isChecked) {
		this.isChecked = isChecked;
	}

	public int getBuyQuantity() {
		return buyQuantity;
	}

	public void setBuyQuantity(int buyQuantity) {
		this.buyQuantity = buyQuantity;
	}

	public String getSupplierPartAuxiliaryId() {
		return supplierPartAuxiliaryId;
	}

	public void setSupplierPartAuxiliaryId(String supplierPartAuxiliaryId) {
		this.supplierPartAuxiliaryId = supplierPartAuxiliaryId;
	}

	public String getUniqueName() {
		return uniqueName;
	}

	public void setUniqueName(String uniqueName) {
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

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getSupplierPartId() {
		return supplierPartId;
	}

	public void setSupplierPartId(String supplierPartId) {
		this.supplierPartId = supplierPartId;
	}

	public String getManufacturerName() {
		return manufacturerName;
	}

	public void setManufacturerName(String manufacturerName) {
		this.manufacturerName = manufacturerName;
	}

	public String getManufacturerPartId() {
		return manufacturerPartId;
	}

	public void setManufacturerPartId(String manufacturerPartId) {
		this.manufacturerPartId = manufacturerPartId;
	}

	public String getManufacturerUrl() {
		return manufacturerUrl;
	}

	public void setManufacturerUrl(String manufacturerUrl) {
		this.manufacturerUrl = manufacturerUrl;
	}

	public String getTimeLeft() {
		return timeLeft;
	}

	public void setTimeLeft(String timeLeft) {
		this.timeLeft = timeLeft;
	}

	public String getCompanyCode() {
		return companyCode;
	}

	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}

	public String getGcmEmailAddress() {
		return gcmEmailAddress;
	}

	public void setGcmEmailAddress(String gcmEmailAddress) {
		this.gcmEmailAddress = gcmEmailAddress;
	}

	public String getSpscCode() {
		return spscCode;
	}

	public void setSpscCode(String spscCode) {
		this.spscCode = spscCode;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
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

	public String getIsApproved() {
		return isApproved;
	}

	public void setIsApproved(String isApproved) {
		this.isApproved = isApproved;
	}

	public String getSpsCode() {
		return spscCode;
	}

	public void setSpsCode(String spsCode) {
		this.spscCode = spsCode;
	}

	public String getUnitOfMeasure() {
		return unitOfMeasure;
	}

	public void setUnitOfMeasure(String unitOfMeasure) {
		this.unitOfMeasure = unitOfMeasure;
	}

	
	public String getLeadTime() {
		return leadTime;
	}

	public void setLeadTime(String leadTime) {
		this.leadTime = leadTime;
	}

	public double getMarketPrice() {
		return marketPrice;
	}

	public void setMarketPrice(double marketPrice) {
		this.marketPrice = marketPrice;
	}

	public String getEffectiveDate() {
		return effectiveDate;
	}

	public void setEffectiveDate(String effectiveDate) {
		this.effectiveDate = effectiveDate;
	}

	public String getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(String expirationDate) {
		this.expirationDate = expirationDate;
	}

	public String getShortName() {
		return shortName;
	}

	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getIsHazardousMaterials() {
		return isHazardousMaterials;
	}

	public void setIsHazardousMaterials(String isHazardousMaterials) {
		this.isHazardousMaterials = isHazardousMaterials;
	}

	public String getIsGreen() {
		return isGreen;
	}

	public void setIsGreen(String isGreen) {
		this.isGreen = isGreen;
	}

	public CommodityCatalog getCommodityCatalog() {
		return commodityCatalog;
	}

	public void setCommodityCatalog(CommodityCatalog commodityCatalog) {
		this.commodityCatalog = commodityCatalog;
	}


	public String getContractTempId() {
		return contractTempId;
	}

	public void setContractTempId(String contractTempId) {
		this.contractTempId = contractTempId;
	}

}
