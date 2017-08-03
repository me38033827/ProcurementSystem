<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>供应商详情界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">


		<!-- 主要内容 -->

		<div class="right" id="supplier-detail-top">
			<table>
				<tr>
					<td class="text-right">任务：</td>
					<td>未完成的任务：4</td>
				</tr>
				<tr>
					<td class="text-right">当前阶段：</td>
					<td>初始阶段</td>
				</tr>
				<tr>
					<td class="text-right">下一里程碑：</td>
					<td>GCM创建新的供应商</td>
				</tr>
			</table>
		</div>

		<div id="searching-title-out-1">
			<div class="inline-b">
				<a class="black" id="searching-title">S21331</a> <a class="grey"
					id="supplier-detail-title">供应商工作区</a>
			</div>
		</div>



		<div id="order-detail-main">
			<div id="order-detail-line4">
				<button class="order-detail-not-clicked" onclick="window.location.href='supplierDetailSummary.jsp'">概述</button>
				<button class="order-detail-not-clicked" onclick="window.location.href='supplierDetail.jsp'">概要</button>
				<button class="order-detail-clicked" onclick="window.location.href='supplierDetailReport.jsp'">报告</button>
				<button class="order-detail-not-clicked" onclick="window.location.href='supplierDetailDoc.jsp'">文档</button>
				<button class="order-detail-not-clicked" onclick="window.location.href='supplierDetailTask.jsp'">任务</button>
				<button class="order-detail-not-clicked" onclick="window.location.href='supplierDetailTeam.jsp'">团队</button>
				<button class="order-detail-not-clicked" onclick="window.location.href='supplierDetailInfo.jsp'">信息板</button>
				<button class="order-detail-not-clicked" onclick="window.location.href='supplierDetailNews.jsp'">事件消息</button>
				<button class="order-detail-not-clicked" onclick="window.location.href='supplierDetailHistory.jsp'">历史记录</button>

			</div>

		</div>
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
