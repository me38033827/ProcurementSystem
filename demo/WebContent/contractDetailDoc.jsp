<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>合同详情-文档界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">
		<!-- 主要内容 -->

		<div class="right" id="contract-detail-top">
			<table>
				<tr>
					<td class="text-right">标识符：</td>
					<td class="blue">C100569</td>
				</tr>
				<tr>
					<td class="text-right">任务：</td>
					<td>未完成的任务：0</td>
				</tr>
			</table>
		</div>

		<div class="left" id="contract-detail-label">
			<a class="black">相关信息</a> <a class="black f-13">展开项目</a> <a
				class="f-13">所有信息区域</a> <a class="f-13">搜索信息</a>
		</div>


		<div id="order-detail-main-1">


			<div id="searching-title-out-2">
				<div class="inline-b">
					<a class="black" id="searching-title">C100569</a> <a class="grey"
						id="supplier-detail-title">合同工作区（采购）</a>
				</div>
			</div>

			<div id="order-detail-line4">
				<button class="order-detail-not-clicked"
					onclick="window.location.href='contractDetail.jsp'">概述</button>
				<button class="order-detail-clicked">文档</button>
				<button class="order-detail-not-clicked">任务</button>
				<button class="order-detail-not-clicked">团队</button>
				<button class="order-detail-not-clicked">信息板</button>
				<button class="order-detail-not-clicked">历史记录</button>

			</div>
			<div id="contract-detail-d">
				<a>2017071712</a>
				<div class="right">
					<a class="f-12">显示详细信息 </a> <select id="my-select" class="blue">
						<option>操作</option>
						<option>选项1</option>
						<option>选项2</option>
					</select>
				</div>
			</div>
			<div>
				<table class="fulltab" id="contract-detail-tab">
					<tr class="searching-tab-row1">
						<td>名称</td>
						<td>所有者</td>
						<td>状态</td>
					</tr>
					<tr class="searching-tab-row2">
						<td>MSM</td>
						<td>＊＊＊</td>
						<td>草稿</td>
					</tr>
					<tr class="searching-tab-row2">
						<td>未命名合同条款</td>
						<td>＊＊＊</td>
						<td>未编辑</td>
					</tr>
					<tr class="searching-tab-row2">
						<td>NSTA模版</td>
						<td>项目所有者</td>
						<td>未创建</td>
					</tr>
					<tr class="searching-tab-row2">
						<td>新的节约跟踪表格</td>
						<td>项目所有者</td>
						<td>未创建</td>
					</tr>
					<tr class="searching-tab-row2">
						<td>复查和审批的合同文档</td>
						<td>项目所有者</td>
						<td>未创建</td>
					</tr>
					<tr class="searching-tab-row2">
						<td>签名的合同文档</td>
						<td>项目所有者</td>
						<td>未创建</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->

	<%@ include file="other/footer.jsp" %>
	
</body>
</html>
