<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>相关字段选择－请购单界面</title>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">选择字段</a>
		</div>
		<div id="order-detail-main">
			<div class="relevant-pr-content">
				<a class="black">要浏览的类型：请购单</a> <a class="black">选择的字段：（未选择字段）</a> <a
					class="black">字段数据类型：</a> <a class="black">字段说明</a>
			</div>
			<div class="relevant-title">
				<a class="black">可用字段：</a>
			</div>
			<div class="relevant-tab">
				<table>
					<tr class="relevant-tab-row1">
						<td>内部字段名称</td>
						<td>字段标签</td>
						<td>说明</td>
						<td>操作</td>
					</tr>
					<tr class="relevant-tab-row2">
						<td class="relevant-tab-col1 indent">审批状态</td>
						<td class="relevant-tab-col2">（无标签）</td>
						<td class="relevant-tab-col3 blue">代表带披肩当前审批状态的整数值。该字段主要供Ariba内部使用……（更多）</td>
						<td class="relevant-tab-col4 blue">选择</td>
					</tr>
					<tr class="relevant-tab-row2">
						<td class="relevant-tab-col1 indent">上次修改时间</td>
						<td class="relevant-tab-col2">（无标签）</td>
						<td class="relevant-tab-col3 blue">上次修改待批件的日期。每当发生了一个操作并且该操作在历史记录选项卡……（更多）</td>
						<td class="relevant-tab-col4 blue">选择</td>
					</tr>
					<tr class="relevant-tab-row2">
						<td class="relevant-tab-col1 indent">重新提交时间</td>
						<td class="relevant-tab-col2">（无标签）</td>
						<td class="relevant-tab-col3 blue">提交待批件的日期（如果有）。注意：当审批人拒绝待批件，并且用户想要……（更多）</td>
						<td class="relevant-tab-col4 blue">选择</td>
					</tr>
					<tr class="relevant-tab-row2">
						<td class="relevant-tab-col1 indent">版本号</td>
						<td class="relevant-tab-col2">（无标签）</td>
						<td class="relevant-tab-col3">待批件的版本号</td>
						<td class="relevant-tab-col4 blue">选择</td>
					</tr>
					<tr class="relevant-tab-row2">
						<td class="relevant-tab-col1 indent">初始唯一名称</td>
						<td class="relevant-tab-col2">（无标签）</td>
						<td class="relevant-tab-col3">唯一名称字段第一次设置成的值</td>
						<td class="relevant-tab-col4 blue">选择</td>
					</tr>
					<tr class="relevant-tab-row2">
						<td class="relevant-tab-col1"><span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"
							id="relevant-span"></span> &nbsp;修改用户</td>
						<td class="relevant-tab-col2">（无标签）</td>
						<td class="relevant-tab-col3">当前正在更改待批件的用户</td>
						<td class="relevant-tab-col4 blue">选择</td>
					</tr>
					<tr class="relevant-tab-row2">
						<td class="relevant-tab-col1 indent">标题信息更改状态</td>
						<td class="relevant-tab-col2">（无标签）</td>
						<td class="relevant-tab-col3">行项目集合标题信息的更改状态</td>
						<td class="relevant-tab-col4 blue">选择</td>
					</tr>
					<tr class="relevant-tab-row2">
						<td class="relevant-tab-col1 indent">是否被PunchIn创建</td>
						<td class="relevant-tab-col2">（无标签）</td>
						<td class="relevant-tab-col3">此待批件是否通过PunchIn创建</td>
						<td class="relevant-tab-col4 blue">选择</td>
					</tr>
					<tr class="relevant-tab-row2">
						<td class="relevant-tab-col1 indent">预算参考标识符</td>
						<td class="relevant-tab-col2">（无标签）</td>
						<td class="relevant-tab-col3">ERP中该文档的预算参考标识符</td>
						<td class="relevant-tab-col4 blue">选择</td>
					</tr>
				</table>
			</div>
			<div class="relevant-finish">
				<button class="btn-b right">完成</button>
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
