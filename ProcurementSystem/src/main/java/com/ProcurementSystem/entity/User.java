package com.ProcurementSystem.entity;

import java.util.ArrayList;

public class User {
	private	int	uniqueName	;
	private	ArrayList<Group>	groups	;
	private	String	definer	;
	private	String	passwordAdapter	;
	private	String	name	;
	private	String	AribaUserIdentifier	;
	private	String	organization	;
	private	String	emailAddress	;
	private	String	allowedExternalEmailDomain	;
	private	String	defaultCurrency	;
	private	String	locale	;
	private	String	timeZoneID	;
	private	String	phone	;
	private	String	fax	;
	private	int	failedLoginAttemptAfterLastLogin	;
	private	String	loginString	;
	private	String	lastLoginString	;
	private	String	supervisorName	;
	private	String	alternateEmailAddresses	;
	private	String 	createString	;
	private	String	lastModifyString	;
	private	String	expireString	;
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
	public String getAribaUserIdentifier() {
		return AribaUserIdentifier;
	}
	public void setAribaUserIdentifier(String aribaUserIdentifier) {
		AribaUserIdentifier = aribaUserIdentifier;
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
	public String getTimeZoneID() {
		return timeZoneID;
	}
	public void setTimeZoneID(String timeZoneID) {
		this.timeZoneID = timeZoneID;
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
	public String getLoginString() {
		return loginString;
	}
	public void setLoginString(String loginString) {
		this.loginString = loginString;
	}
	public String getLastLoginString() {
		return lastLoginString;
	}
	public void setLastLoginString(String lastLoginString) {
		this.lastLoginString = lastLoginString;
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
	public String getCreateString() {
		return createString;
	}
	public void setCreateString(String createString) {
		this.createString = createString;
	}
	public String getLastModifyString() {
		return lastModifyString;
	}
	public void setLastModifyString(String lastModifyString) {
		this.lastModifyString = lastModifyString;
	}
	public String getExpireString() {
		return expireString;
	}
	public void setExpireString(String expireString) {
		this.expireString = expireString;
	}
	
}
