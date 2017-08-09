<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>订单详情界面-收货</title>

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
					onclick="window.location.href='order-detail.jsp'">摘要</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailApproval.jsp'">审批流程</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailDelivery.jsp'">物流</button>
				<button class="order-detail-clicked">收货</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailReceipt.jsp'">收据</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailInvoice.jsp'">发票</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailPayment.jsp'">付款</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailHistory.jsp'">历史记录</button>
			</div>
			<div id="order-receipt-title-out">
				<a id="order-receipt-title">收货</a>
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
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->

	<%@ include file="other/footer.jsp"%>
	
</body>
</html>
