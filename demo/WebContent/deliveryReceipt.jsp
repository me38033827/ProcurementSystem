<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>收货管理界面</title>

<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">


		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">收货管理编辑</a>
		</div>

		<!-- 主要内容 -->
		<div id="order-detail-main">
			<div id="order-detail-line4">
				<button class="order-detail-clicked">摘要</button>
				<button class="order-detail-not-clicked">审批流程</button>
			</div>
			<div class="delivery-adjust"></div>
			<div class="delivery-adjust"></div>
			<div class="inline-b" id="delivery-receipt-tab1">
				<table>
					<tr>
						<td id="order-detail-tab-col1">订单标识符：</td>
						<td id="order-detail-tab-col2" class="blue"><a
							href="order-detail.html">10000081</a></td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">订单标题：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">原系统名称：</td>
						<td id="order-detail-tab-col2"><input
							class="form-control input" /></td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">我的标签：</td>
						<td id="order-detail-tab-col2"><div class="blue">
								应用标签...<span class="caret"></span>
							</div></td>
					</tr>

				</table>
			</div>
			<div class="inline-b" id="delivery-receipt-tab2">
				<table>
					<tr>
						<td id="order-detail-tab-col1">日期：</td>
						<td id="order-detail-tab-col2">2017年7月12日（星期三）</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">处理状态：</td>
						<td id="order-detail-tab-col2">正在接收</td>
					</tr>
				</table>
			</div>

			<div class="invoice-detail-title">
				<a class="black">行项目－按数量接收</a>
			</div>
			<div id="order-tab-1">
				<table>
					<tr id="order-tab-1-row1">
						<td>编号</td>
						<td>数量</td>
						<td>完整描述</td>
						<td>单位</td>
						<td>供应商部件号</td>
						<td>以前接收数量</td>
						<td>以前拒绝数量</td>
						<td>已接收</td>
						<td>已拒绝</td>
						<td>已收总计</td>
						<td>接收日期</td>
						<td>原系统采购订单行项目</td>
					</tr>
					<tr id="order-tab-1-row2">
						<td>1</td>
						<td>7</td>
						<td>＊＊＊＊＊＊</td>
						<td>件</td>
						<td>12341</td>
						<td>0</td>
						<td>0</td>
						<td><input class="form-control input" value="0" /></td>
						<td><input class="form-control input" value="0" /></td>
						<td>0</td>
						<td><input class="form-control input" value="2017年7月12日" /></td>
						<td></td>
					</tr>
				</table>
				<button class='btn-w' id="invoice-detail-info">更新合计</button>
				<div>
					<a class="inline-b black">关闭订单：</a>
					<div class="radio inine-b">
						<label><input type="radio" name="activiate"
							id="optionsRadios1" value="option1">是</label> <label><input
							type="radio" name="activiate" id="optionsRadios2" value="option2"
							checked>否</label>
					</div>
				</div>
			</div>

			<div class="invoice-detail-title">
				<a class="black">备注－适用于整个收货记录</a>
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
