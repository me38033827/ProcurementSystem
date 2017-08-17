package com.ProcurementSystem.entity;

import java.util.ArrayList;

public class Supplier {
	private int uniqueName;
	private ArrayList<Commodity> commodities;
	private User contact;
	private String name;
	private String isSupplier;
	private String isClient;
	private String description;
	private String approveState;
	private String otherName1;
	private String otherName2;
	private String fullNameByLaw;
	private String stockCode;
	private String globalLocationCode;
	private String taxIdentifier;
	private String stateTaxIdentifier;
	private String areaTaxIdentifier;
	private String VATIdentifier;
	private String exemptWithholdingTax;
	private String province;
	private String switchboard;
	private String mainEmail;
	private String otherEmail;
	private String UNSPSCCommodity;
	private String duns;
	private String preferredLanguage;
	private String supplierIntegrityState;
	private String supplierIntegritySystemName;
	private String otherAddress;
	private String mainFax;
	private String coporateURL;
	private String origanizationType;
	private String parentValue;
	private String taxNumber;

	public int getUniqueName() {
		return uniqueName;
	}

	public void setUniqueName(int uniqueName) {
		this.uniqueName = uniqueName;
	}

	public ArrayList<Commodity> getCommodities() {
		return commodities;
	}

	public void setCommodities(ArrayList<Commodity> commodities) {
		this.commodities = commodities;
	}

	public User getContact() {
		return contact;
	}

	public void setContact(User contact) {
		this.contact = contact;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIsSupplier() {
		return isSupplier;
	}

	public void setIsSupplier(String isSupplier) {
		this.isSupplier = isSupplier;
	}

	public String getIsClient() {
		return isClient;
	}

	public void setIsClient(String isClient) {
		this.isClient = isClient;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getApproveState() {
		return approveState;
	}

	public void setApproveState(String approveState) {
		this.approveState = approveState;
	}

	public String getOtherName1() {
		return otherName1;
	}

	public void setOtherName1(String otherName1) {
		this.otherName1 = otherName1;
	}

	public String getOtherName2() {
		return otherName2;
	}

	public void setOtherName2(String otherName2) {
		this.otherName2 = otherName2;
	}

	public String getFullNameByLaw() {
		return fullNameByLaw;
	}

	public void setFullNameByLaw(String fullNameByLaw) {
		this.fullNameByLaw = fullNameByLaw;
	}

	public String getStockCode() {
		return stockCode;
	}

	public void setStockCode(String stockCode) {
		this.stockCode = stockCode;
	}

	public String getGlobalLocationCode() {
		return globalLocationCode;
	}

	public void setGlobalLocationCode(String globalLocationCode) {
		this.globalLocationCode = globalLocationCode;
	}

	public String getTaxIdentifier() {
		return taxIdentifier;
	}

	public void setTaxIdentifier(String taxIdentifier) {
		this.taxIdentifier = taxIdentifier;
	}

	public String getStateTaxIdentifier() {
		return stateTaxIdentifier;
	}

	public void setStateTaxIdentifier(String stateTaxIdentifier) {
		this.stateTaxIdentifier = stateTaxIdentifier;
	}

	public String getAreaTaxIdentifier() {
		return areaTaxIdentifier;
	}

	public void setAreaTaxIdentifier(String areaTaxIdentifier) {
		this.areaTaxIdentifier = areaTaxIdentifier;
	}

	public String getVATIdentifier() {
		return VATIdentifier;
	}

	public void setVATIdentifier(String vATIdentifier) {
		VATIdentifier = vATIdentifier;
	}

	public String getExemptWithholdingTax() {
		return exemptWithholdingTax;
	}

	public void setExemptWithholdingTax(String exemptWithholdingTax) {
		this.exemptWithholdingTax = exemptWithholdingTax;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getSwitchboard() {
		return switchboard;
	}

	public void setSwitchboard(String switchboard) {
		this.switchboard = switchboard;
	}

	public String getMainEmail() {
		return mainEmail;
	}

	public void setMainEmail(String mainEmail) {
		this.mainEmail = mainEmail;
	}

	public String getOtherEmail() {
		return otherEmail;
	}

	public void setOtherEmail(String otherEmail) {
		this.otherEmail = otherEmail;
	}

	public String getUNSPSCCommodity() {
		return UNSPSCCommodity;
	}

	public void setUNSPSCCommodity(String uNSPSCCommodity) {
		UNSPSCCommodity = uNSPSCCommodity;
	}

	public String getDuns() {
		return duns;
	}

	public void setDuns(String duns) {
		this.duns = duns;
	}

	public String getPreferredLanguage() {
		return preferredLanguage;
	}

	public void setPreferredLanguage(String preferredLanguage) {
		this.preferredLanguage = preferredLanguage;
	}

	public String getSupplierIntegrityState() {
		return supplierIntegrityState;
	}

	public void setSupplierIntegrityState(String supplierIntegrityState) {
		this.supplierIntegrityState = supplierIntegrityState;
	}

	public String getSupplierIntegritySystemName() {
		return supplierIntegritySystemName;
	}

	public void setSupplierIntegritySystemName(String supplierIntegritySystemName) {
		this.supplierIntegritySystemName = supplierIntegritySystemName;
	}

	public String getOtherAddress() {
		return otherAddress;
	}

	public void setOtherAddress(String otherAddress) {
		this.otherAddress = otherAddress;
	}

	public String getMainFax() {
		return mainFax;
	}

	public void setMainFax(String mainFax) {
		this.mainFax = mainFax;
	}

	public String getCoporateURL() {
		return coporateURL;
	}

	public void setCoporateURL(String coporateURL) {
		this.coporateURL = coporateURL;
	}

	public String getOriganizationType() {
		return origanizationType;
	}

	public void setOriganizationType(String origanizationType) {
		this.origanizationType = origanizationType;
	}

	public String getParentValue() {
		return parentValue;
	}

	public void setParentValue(String parentValue) {
		this.parentValue = parentValue;
	}

	public String getTaxNumber() {
		return taxNumber;
	}

	public void setTaxNumber(String taxNumber) {
		this.taxNumber = taxNumber;
	}

}
