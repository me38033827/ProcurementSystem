<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>用户组详情界面</title>

<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">查看“0001组”的详细信息</a>
				<button class="btn-w right"
					onclick="window.location.href='userGroupSearchingR.jsp'">完成</button>
			</div>
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line4">
					<button class="order-detail-clicked" onclick="window.location.href='userGroupDetail.jsp'">常规</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='userGroupDetailUser.jsp'">用户</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='userGroupDetailSon.jsp'">子组</button>
				</div>

				<div class="adjust"></div>
				<div class="inline-b" id="user-detail-tab">
					<table>

						<tr>
							<td id="order-detail-tab-col1">定义者：</td>
							<td id="order-detail-tab-col2">管理者</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">唯一名称：</td>
							<td id="order-detail-tab-col2">0001</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">组名称：</td>
							<td id="order-detail-tab-col2">0001</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">说明：</td>
							<td id="order-detail-tab-col2"></td>
						</tr>

					</table>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="other/footer.jsp"%>

	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
