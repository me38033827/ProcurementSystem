<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>模版创建详情界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">


		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">新建项目模版</a>
			<div class="right">
				<button class="btn-b">确定</button>
				<button class="btn-w">取消</button>
			</div>
		</div>
		<div id="order-detail-main">
			<div id="order-detail-line2">
				<a class="black inline-b">输入该模版的“名称”和“说明”。如果该模版尚未翻译成用户使用的界面语言（在首选项中设置），则会使用“基本语言”显示该模版。例如，假设您建立了一格基本语言为英语的模版，并提供了法语和日语翻译。如果德</a>
				<a class="blue inline-b"> 更多</a>
			</div>
			<div class="inline-b" id="contract-crea-tab">
				<table>
					<tr>
						<td class="contract-tab-col1">＊名称：</td>
						<td class="contract-tab-col2"><input
							class="form-control input" /></td>
					</tr>
					<tr>
						<td class="contract-tab-col1">说明：</td>
						<td class="contract-tab-col2"><textarea class="form-control"
								id="pr-textarea"></textarea></td>
					</tr>
					<tr>
						<td class="contract-tab-col1">基本语言：</td>
						<td class="contract-tab-col2"><select id="my-select">
								<option>中文（中国）</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>
				</table>
			</div>

			<div class="invoice-detail-title"></div>
			<div class="right">
				<button class="btn-b">确定</button>
				<button class="btn-w">取消</button>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->


	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
