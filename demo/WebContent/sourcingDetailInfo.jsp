<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>寻源项目详情界面</title>

<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">


		<!-- 主要内容 -->
		<div class="con">

			<div class="right" id="contract-detail-top">
				<table>
					<tr>
						<td class="text-right">标识符：</td>
						<td class="blue">WS13344</td>
					</tr>
					<tr>
						<td class="text-right">任务：</td>
						<td>未完成的任务：0</td>
					</tr>
					<tr>
						<td class="text-right">当前阶段：</td>
						<td>审核条件，分析类别……</td>
					</tr>
				</table>
			</div>

			<div class="left" id="contract-detail-label">
				<a class="black">相关信息</a> <a class="black f-13">展开项目</a> <a
					class="f-13">所有信息区域</a> <a class="f-13">搜索信息</a>
			</div>


			<div id="order-detail-main-1">


				<div id="searching-title-out-3">
					<div class="inline-b">
						<a class="black" id="searching-title">激光打印机寻源</a> <a class="grey"
							id="supplier-detail-title">寻源项目</a>
					</div>
				</div>

				<div id="order-detail-line4">
					<button class="order-detail-not-clicked" onclick="window.location.href='sourcingDetail.jsp'">概述</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='sourcingDetailDoc.jsp'">文档</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='sourcingDetailTask.jsp'">任务</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='sourcingDetailTeam.jsp'">团队</button>
					<button class="order-detail-clicked" onclick="window.location.href='sourcingDetailInfo.jsp'">信息板</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='sourcingDetailHistory.jsp'">历史记录</button>

				</div>
	
			</div>
		</div>
	</div>
	<%@ include file="other/footer.jsp"%>
	<!-- CONTENT-WRAPPER SECTION END-->



</body>
</html>
