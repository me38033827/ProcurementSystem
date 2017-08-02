<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>收货详情界面</title>

</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">




		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">RC123</a> <a
				class="right inline-b black f-18">状态：正在编辑</a>
		</div>

		<div id="order-detail-main">
			<div id="order-detail-line2">
				<a class="black">这是您所选请求的详细信息。根据其状态，您可以对该请求进行编辑、更改、复制、取消或提交进行审批。您还可以打印改请求的详细信息。请复查请求并采取所需的操作。</a>
			</div>
			<div id="order-detail-line3">
				<button class="btn-w"
					onclick="window.location.href='delivery-receipt.jsp'">编辑</button>
				<button class="btn-w">强制处理</button>
				<button class="btn-w">打印</button>
			</div>
			<div id="order-detail-line4">
				<button class="order-detail-clicked">摘要</button>
				<button class="order-detail-not-clicked">审批流程</button>
				<button class="order-detail-not-clicked">历史记录</button>
			</div>
			<div class="delivery-adjust"></div>
			<div class="inline-b" id="receipt-detail-tab1">
				<table>
					<tr>
						<td id="order-detail-tab-col1">订单标识符：</td>
						<td class="blue" id="order-detail-tab-col2"><a
							href="order-detail.html">10000081</a></td>
					</tr>
					<tr>
						<td id="order-detail-tab-col1">订单标题：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊＊</td>
					</tr>
					<tr>
						<td id="order-detail-tab-col1">我的标签：</td>
						<td id="order-detail-tab-col2"><div class="blue">
								应用标签...<span class="caret"></span>
							</div></td>
					</tr>
				</table>
			</div>
			<div class="inline-b" id="receipt-detail-tab2">
				<table>
					<tr>
						<td id="order-detail-tab-col1">日期：</td>
						<td id="order-detail-tab-col2">2017年7月5日</td>
					</tr>
					<tr>
						<td id="order-detail-tab-col1">处理状态：</td>
						<td id="order-detail-tab-col2">正在处理</td>
					</tr>
				</table>
			</div>
			<div id="order-detail-line">
				<a class="order-detail-subtitle">行项目 － 按数量接收</a>
			</div>
			<div id="receipt-detail-adjust"></div>
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
						<td>接受日期</td>
					</tr>
					<tr id="order-tab-1-row2">
						<td>1</td>
						<td>1</td>
						<td>＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊</td>
						<td>件</td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>1</td>
						<td>0</td>
						<td>1</td>
						<td>2017年7月5日</td>
					</tr>
				</table>
			</div>
			<div>
				<a class="black inline-b" id="order-close">关闭订单：否</a>
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
