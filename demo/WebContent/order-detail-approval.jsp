<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>订单详情界面-收据</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">
		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">10000081</a> <a
				class="right inline-b black f-18">状态：已接收</a>
		</div>
		<div id="order-detail-main">

			<div id="order-detail-line2">
				<a class="black">这是您所选请求的详细信息。根据其状态，您可以对该请求进行编辑、更改、复制、取消或提交进行审批。您还可以打印改请求的详细信息。请复查请求并采取所需的操作。</a>
			</div>
			<div id="order-detail-line3">
				<button class="btn-w">关闭</button>
				<button class="btn-w">打印</button>
				<button class="btn-w">创建预付款</button>
			</div>
			<div id="order-detail-line4">
				<button class="order-detail-not-clicked"
					onclick="window.location.href='order-detail.html'">摘要</button>
				<button class="order-detail-clicked">审批流程</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='order-detail-delivery.html'">物流</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='order-detail-goods-receipt.html'">收货</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='order-detail-receipt.html'">收据</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='order-detail-invoice.html'">发票</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='order-detail-payment.html'">付款</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='order-detail-history.html'">历史记录</button>
			</div>
			<div id="order-receipt-title-out">
				<a id="order-receipt-title">审批</a>
			</div>
			<div id="order-tab4-out"></div>
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
