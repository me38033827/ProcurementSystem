<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>用户组详情界面</title>


</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">


		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">查看“0001组”的详细信息</a>
			<button class="btn-w right"
				onclick="window.location.href='user-group-searching.html'">完成</button>
		</div>
		<div class="user-main">
			<!-- 搜索显示区域 -->
			<div id="order-detail-line4">
				<button class="order-detail-not-clicked"
					onclick="window.location.href='user-group-detail.html'">常规</button>
				<button class="order-detail-clicked">用户</button>
				<button class="order-detail-not-clicked">子组</button>
			</div>

			<div class="adjust"></div>
			<div id="contract-detail-tab-doc">
				<table class="fulltab">
					<tr class="searching-tab-row1">
						<td>用户标识符</td>
						<td>用户名</td>
						<td>类型</td>
					</tr>
					<tr class="searching-tab-row2">
						<td>用户1</td>
						<td>用户1</td>
						<td>企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td>用户2</td>
						<td>用户2</td>
						<td>企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td>用户3</td>
						<td>用户3</td>
						<td>企业用户</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
