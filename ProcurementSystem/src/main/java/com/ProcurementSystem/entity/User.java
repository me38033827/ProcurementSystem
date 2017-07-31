package com.ProcurementSystem.entity;

import java.util.ArrayList;

public class User {
	private	int	uniqueName	;
	private	ArrayList<Group>	groups	;
	private	String	definer	;
	private	String	passwordAdapter	;
	private	String	name	;
	private	String	userIdentifier	;
	private	String	organization	;
	private	String	emailAddress	;
	private	String	allowedExternalEmailDomain	;
	private	String	defaultCurrency	;
	private	String	locale	;
	private	String	timeZone	;
	private	String	phone	;
	private	String	fax	;
	private	int	failedLoginAttemptAfterLastLogin	;
	private	String	loginDate	;
	private	String	lastLoginDate	;
	private	String	supervisorName	;
	private	String	alternateEmailAddresses	;
	private	String 	createDate	;
	private	String	lastModifyDate	;
	private	String	expireDate	;
	public int getUniqueName() {
		return uniqueName;
	}
	public void setUniqueName(int uniqueName) {
		this.uniqueName = uniqueName;
	}
	public ArrayList<Group> getGroups() {
		return groups;
	}
	public void setGroups(ArrayList<Group> groups) {
		this.groups = groups;
	}
	public String getDefiner() {
		return definer;
	}
	public void setDefiner(String definer) {
		this.definer = definer;
	}
	public String getPasswordAdapter() {
		return passwordAdapter;
	}
	public void setPasswordAdapter(String passwordAdapter) {
		this.passwordAdapter = passwordAdapter;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserIdentifier() {
		return userIdentifier;
	}
	public void setUserIdentifier(String userIdentifier) {
		this.userIdentifier = userIdentifier;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getAllowedExternalEmailDomain() {
		return allowedExternalEmailDomain;
	}
	public void setAllowedExternalEmailDomain(String allowedExternalEmailDomain) {
		this.allowedExternalEmailDomain = allowedExternalEmailDomain;
	}
	public String getDefaultCurrency() {
		return defaultCurrency;
	}
	public void setDefaultCurrency(String defaultCurrency) {
		this.defaultCurrency = defaultCurrency;
	}
	public String getLocale() {
		return locale;
	}
	public void setLocale(String locale) {
		this.locale = locale;
	}
	public String getTimeZone() {
		return timeZone;
	}
	public void setTimeZone(String timeZone) {
		this.timeZone = timeZone;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public int getFailedLoginAttemptAfterLastLogin() {
		return failedLoginAttemptAfterLastLogin;
	}
	public void setFailedLoginAttemptAfterLastLogin(int failedLoginAttemptAfterLastLogin) {
		this.failedLoginAttemptAfterLastLogin = failedLoginAttemptAfterLastLogin;
	}
	public String getLoginDate() {
		return loginDate;
	}
	public void setLoginDate(String loginDate) {
		this.loginDate = loginDate;
	}
	public String getLastLoginDate() {
		return lastLoginDate;
	}
	public void setLastLoginDate(String lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}
	public String getSupervisorName() {
		return supervisorName;
	}
	public void setSupervisorName(String supervisorName) {
		this.supervisorName = supervisorName;
	}
	public String getAlternateEmailAddresses() {
		return alternateEmailAddresses;
	}
	public void setAlternateEmailAddresses(String alternateEmailAddresses) {
		this.alternateEmailAddresses = alternateEmailAddresses;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getLastModifyDate() {
		return lastModifyDate;
	}
	public void setLastModifyDate(String lastModifyDate) {
		this.lastModifyDate = lastModifyDate;
	}
	public String getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}
	
}
