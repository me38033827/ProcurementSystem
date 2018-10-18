<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<!-- 导航栏：第二行-->

<div class="container" id="secondline-out" style="width: 100%">
	<div class="dropdown" id="secondline-dropdown">
		<!-- 第二行靠左 -->
		<button class="secondline-left" id="main"
			onclick="window.location.href='/ProcurementSystem/buyer/main'">主页</button>
		<button class="secondline-left">寻源</button>
		<button class="secondline-left">合同</button>
		<!--<button class="secondline-left">采购</button>-->
		<!--<button class="secondline-left">开发票</button>-->
		<button class="secondline-left" id="supplier"
			onclick="window.location.href='/ProcurementSystem/buyer/mainSupplier'">供应商</button>
		<!--<button class="secondline-left" id="commodityCatalog"
			onclick="window.location.href='/ProcurementSystem/buyer/commodityCatalog'">目录</button>-->
		<button class="secondline-left" id="search"
			onclick="window.location.href='/ProcurementSystem/buyer/search/supplierSearchDistribute?page=2004'">供应商管理</button>
	</div>
	<%@include file="../other/header2r.jsp"%>
</div>
