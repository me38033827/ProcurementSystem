<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>支付单据详情界面</title>

<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">PAY123123</a> <a
				class="right inline-b black f-18">状态：已拒绝</a>
		</div>
		<div id="order-detail-main">
			<div id="order-detail-line2">
				<a class="black">这是您所选请求的详细信息。根据其状态，您可以对该请求进行编辑、更改、复制、取消或提交进行审批。您还可以打印改请求的详细信息。请复查请求并采取所需的操作。</a>
			</div>
			<div id="order-detail-line3">
				<button class="btn-w">打印</button>
			</div>
			<div id="order-detail-line4">
				<button class="order-detail-clicked">摘要</button>
				<button class="order-detail-not-clicked">历史记录</button>
			</div>

			<div class="invoice-detail-title">
				<a class="black">常规</a>
			</div>

			<div class="inline-b" id="invoice-detail-tab1">
				<table>
					<tr>
						<td id="order-detail-tab-col1">标识符：</td>
						<td id="order-detail-tab-col2">PAY123123</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">供应商：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">收货人地点：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">银行地址：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">银行账户：</td>
						<td id="order-detail-tab-col2">13461425745413</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">税号：</td>
						<td id="order-detail-tab-col2">1354646</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">Swift code：</td>
						<td id="order-detail-tab-col2"></td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">支付方式：</td>
						<td id="order-detail-tab-col2">支付方式1</td>
					</tr>
				</table>
			</div>
			<div class="inline-b" id="invoice-detail-tab2">
				<table>
					<tr>
						<td id="order-detail-tab-col1">应付款：</td>
						<td id="order-detail-tab-col2">200.00CNY</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">交易：</td>
						<td id="order-detail-tab-col2"></td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">付款条件：</td>
						<td id="order-detail-tab-col2">02304</td>
					</tr>
				</table>
			</div>

			<div class="invoice-detail-title">
				<a class="black">交易详细信息</a>
			</div>

			<div class="inline-b" id="invoice-detail-tab3">
				<table>
					<tr>
						<td id="order-detail-tab-col1">到期日：</td>
						<td id="order-detail-tab-col2">2017年7月8日</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">付款日期：</td>
						<td id="order-detail-tab-col2">2017年7月7日</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">批准的金额：</td>
						<td id="order-detail-tab-col2">200.00CNY</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">折扣金额：</td>
						<td id="order-detail-tab-col2">00.00CNY</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">调整金额：</td>
						<td id="order-detail-tab-col2">00.00CNY</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">应付金额：</td>
						<td id="order-detail-tab-col2">200.00CNY</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">银行地址：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊＊</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">银行账户：</td>
						<td id="order-detail-tab-col2">13461425745413</td>
					</tr>
					<tr>
						<td id="order-detail-tab-col1">税号：</td>
						<td id="order-detail-tab-col2">1354646</td>
					</tr>
					<tr>
						<td id="order-detail-tab-col1">Swift code：</td>
						<td id="order-detail-tab-col2"></td>
					</tr>
					<tr>
						<td id="order-detail-tab-col1">支付方式：</td>
						<td id="order-detail-tab-col2">支付方式1</td>
					</tr>
				</table>
			</div>
			<div class="inline-b" id="invoice-detail-tab4">
				<table>
					<tr>
						<td id="order-detail-tab-col1">付款方式：</td>
						<td id="order-detail-tab-col2">付款方式1</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">付款途径：</td>
						<td id="order-detail-tab-col2">外部系统</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">付款结算方式：</td>
						<td id="order-detail-tab-col2">外部系统</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">源发银行：</td>
						<td id="order-detail-tab-col2">＊＊＊银行</td>
					</tr>
					<tr>
						<td id="order-detail-tab-col1">收款银行：</td>
						<td id="order-detail-tab-col2">＊＊＊银行</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->

	<%@ include file="other/footer.jsp"%>
	
</body>
</html>
