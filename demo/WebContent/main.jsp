<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>审批流程创建界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<link href="assets/css/bootstrap-grid.min.css" rel="text"
	rel="stylesheet" type="text/css">

</head>
<!-- 页面整体宽度：1320px -->
<body class="a-dashbrd-page-bg">

	<!-- 导航栏 第三行 -->
	<div id="thirdline-out" style="background-color: transparent;">

		<div class="col-md-2 inline-b left" id="search-service"
			style="postion: relative; left: 50px;">
			<select class="col-md-12" id="my-select">
				<option>服务</option>
				<option>服务</option>
				<option>服务</option>
			</select>

		</div>
		<!-- 第三行搜索框 -->
		<div style="position: relative; left: 50px;">
			<input type="text" class="inline-b border-g left col-md-4"
				value="按部件号、供应商名称或关键字搜索"
				onfocus="if(this.value=='按部件号、供应商名称或关键字搜索') this.value=''"
				onblur="if(this.value=='')this.value='按部件号、供应商名称或关键字搜索' ">
			<button class="btn btn-default inline-b border-g left"
				id="search-btn">
				<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
			</button>
		</div>
		<!-- 第三行右侧图标 -->

		<div class="thirdline-icons">
			<button id="wrench-btn" onclick="">
				<span class="glyphicon glyphicon-wrench" aria-hidden="true" id=""></span>
			</button>
			<button id="refresh-btn" onclick="">
				<span class="glyphicon glyphicon-refresh" aria-hidden="true" id=""></span>
			</button>
		</div>

		<!-- 第三行右侧标记 -->
	</div>


	<!--主要内容  -->
	<div class="container">
		<!-- 第一行内容 -->
		<div class="row">
			<div class="col-md-2">
				<div style="background-color: white; margin: 0px; padding: 0px;">
					<div class="module-head">通用操作</div>
					<div class="module">
						<table>
							<tr>
								<th>创建</th>
							</tr>
							<tr>
								<td><a class="secondline-right" href="sourcingCreation.jsp">寻源项目</a></td>
							</tr>
							<tr>
								<td><a class="secondline-right" href="supplierCreation.jsp">供应商</a></td>
							</tr>

							<tr>
								<td><a class="secondline-right"
									href="contractWorkspaceCreation.jsp">合同</a></td>
							</tr>

							<tr>
								<td><a class="secondline-right"
									href="procurementCatalogCreation.jsp">商品目录</a></td>
							</tr>

							<tr>
								<td><a class="secondline-right" href="prCreation.jsp">请购单</a></td>
							</tr>

							<tr>
								<td><a class="secondline-right" href="invoiceCreation.jsp">发票</a></td>
							</tr>

							<tr>
								<td><a class="secondline-right" href="templateCreation.jsp">模版</a></td>
							</tr>

							<tr>
								<td><a class="secondline-right" href="approvalCreation.jsp">审批</a></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-10">
				<div style="background-color: white; margin: 0px; padding: 0px;">
					<div class="module-head">新闻</div>
					<div class="module">
						<table>
							<tr>
								<td>系统管理员尚未配置公司新闻内容</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!--
		<div class="row">
			<div class="col-md-2">
				<div class="module-head">最近查看的内容</div>
				<div class="module">
					<table>
						<tr>
							<td>&nbsp;</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="col-md-4">
			
				<table>
					<tr>
						<th>我的文档</th>
					</tr>
					<tr>
						<td>
							<table>
								<tr>
									<th>标题</th>
									<th>日期</th>
									<th>状态</th>
								</tr>
								<tr>
									<td colspan="3">无项目</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
			<div class="col-md-5 module"></div>
		</div> -->
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="other/footer.jsp"%>
	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
