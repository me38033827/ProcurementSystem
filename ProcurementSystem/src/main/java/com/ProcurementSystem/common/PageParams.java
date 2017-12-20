package com.ProcurementSystem.common;

import java.util.List;

public class PageParams<T> {
	private int currPage;//当前页面
	public static int pageSize = 6;//页面大小
	private int rowCount;//总行数
	private int totalPages;//总页数
	private List<T> data;//数据
	public int getCurrPage() {
		return currPage;
	}
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	
	public int getPageSize() {
		return pageSize;
	}
	public static void setPageSize(int pageSize) {
		PageParams.pageSize = pageSize;
	}
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount(int rowCount) {
		totalPages = rowCount/pageSize;
		if(rowCount % pageSize > 0) totalPages ++;
		this.rowCount = rowCount;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	
}
