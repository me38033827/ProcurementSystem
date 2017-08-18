package com.ProcurementSystem.entity;

public class Commodity {
	private int uniqueName;
	private Supplier supplier;
	private Contract contract;
	private CommodityCatalog commodityCatalog;
	private double unitPrice;
	private String supplierPartId;
	private String manufacturerName;
	private String manufacturerPartId;
	private String manufacturerUrl;
	private String timeLeft;
	private String companyCode;
	private String gcmEmailAdress;
	private String itemDescription;
	private String materialGroup;
	private String commodityType;
	private String isApproved;
	private String spsCode;
	private String unitOfMeasure;
	private int leadTime;
	private double marketPrice;
	private String effectiveDate;
	private String expirationDate;
	private String shortName;
	private String image;
	private String thumbnail;
	private String isHazardousMaterials;
	private String isGreen;
	private int supplierPartAuxiliaryId;

	public int getSupplierPartAuxiliaryId() {
		return supplierPartAuxiliaryId;
	}
	public void setSupplierPartAuxiliaryId(int i) {
		this.supplierPartAuxiliaryId = i;
	}

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

	public String getGcmEmailAdress() {
		return gcmEmailAdress;
	}

	public void setGcmEmailAdress(String gcmEmailAdress) {
		this.gcmEmailAdress = gcmEmailAdress;
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
		return spsCode;
	}

	public void setSpsCode(String spsCode) {
		this.spsCode = spsCode;
	}

	public String getUnitOfMeasure() {
		return unitOfMeasure;
	}

	public void setUnitOfMeasure(String unitOfMeasure) {
		this.unitOfMeasure = unitOfMeasure;
	}

	public int getLeadTime() {
		return leadTime;
	}

	public void setLeadTime(int leadTime) {
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

}
