<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>订单详情界面</title>
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
				<button class="btn-w"
					onclick="window.location.href='order-searching.jsp'">关闭</button>
				<button class="btn-w">打印</button>
				<button class="btn-w">创建预付款</button>
			</div>
			<div id="order-detail-line4">
				<button class="order-detail-clicked">摘要</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailApproval.jsp'">审批流程</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailDelivery.jsp'">物流</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailGoodsReceipt.jsp'">收货</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailReceipt.jsp'">收据</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailInvoice.jsp'">发票</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailPayment.jsp'">付款</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailGoodsReceipt.jsp'">历史记录</button>
			</div>
			<div id="order-detail-tab">
				<table>
					<tr>
						<td id="order-detail-tab-col1">订单标识符：</td>
						<td id="order-detail-tab-col2">10000081</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">版本：</td>
						<td id="order-detail-tab-col2">1</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">标题：</td>
						<td id="order-detail-tab-col2">＊＊＊＊</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">采购单位：</td>
						<td id="order-detail-tab-col2">0001</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">供应商：</td>
						<td id="order-detail-tab-col2">UAT-01</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">联系人：</td>
						<td id="order-detail-tab-col2">UAT-01</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">关闭订单：</td>
						<td id="order-detail-tab-col2">打开</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">区域：</td>
						<td id="order-detail-tab-col2">PRC</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">国家：</td>
						<td id="order-detail-tab-col2">中国</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">原系统采购订单号：</td>
						<td id="order-detail-tab-col2"></td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">原系统名称：</td>
						<td id="order-detail-tab-col2"></td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">订单方式：</td>
						<td id="order-detail-tab-col2">邮件</td>
					</tr>

				</table>
			</div>
			<div id="order-detail-line">
				<a class="order-detail-subtitle">行项目</a>
			</div>
			<div id="order-detail-content">
				<div>
					<div class="left">
						<a class="black">1行项目</a>
					</div>
				</div>
				<div>
					<div class="right">
						<a>显示详细信息</a>
					</div>
				</div>
			</div>
			<div id="order-tab-1">
				<table>
					<tr id="order-tab-1-row1">
						<td>类型</td>
						<td>请购单标识符</td>
						<td>数量</td>
						<td>单位</td>
						<td>说明</td>
						<td>供应商部件号</td>
						<td>价格</td>
						<td>折扣</td>
						<td>净额</td>
						<td>费用</td>
						<td>税款</td>
						<td>金额</td>
						<td></td>
					</tr>
					<tr id="order-tab-1-row2">
						<td>类型1</td>
						<td>PR123123</td>
						<td>1</td>
						<td>件</td>
						<td>UAT项目</td>
						<td>部件123</td>
						<td>888.00CNY</td>
						<td></td>
						<td>0.00CNY</td>
						<td></td>
						<td>888.00CNY</td>
						<td>
							<button class='btn-w'>详细信息</button>
						</td>
					</tr>
				</table>
			</div>

			<div id="order-tab2-out">
				<div class="right">
					<table>
						<tr>
							<td class="order-tab2-col1">订单合计：</td>
							<td class="order-tab2-col2">888.00CNY</td>
						</tr>
						<tr>
							<td class="order-tab2-col1">发票总金额：</td>
							<td class="order-tab2-col2">888.00CNY</td>
						</tr>
						<tr>
							<td class="order-tab2-col1">余额合计：</td>
							<td class="order-tab2-col2">0.00CNY</td>
						</tr>
					</table>
				</div>
			</div>
			<div id="order-detail-line">
				<a class="order-detail-subtitle">付款条件</a>
			</div>

			<div id="order-tab3-out">
				<table>
					<tr>
						<td class="order-tab3-col1">标识：</td>
						<td colspan="2">0601</td>
					</tr>
					<tr>
						<td class="order-tab3-col1">标题：</td>
						<td colspan="2">0601</td>
					</tr>
					<tr>
						<td class="order-tab3-col1">说明：</td>
						<td colspan="2">净60天</td>
					</tr>
					<tr>
						<td class="order-tab3-col1">期限：</td>
						<td class="order-tab3-bg">付款（天）</td>
						<td class="order-tab3-bg">折扣</td>
					</tr>
					<tr>
						<td class="order-tab3-col1"></td>
						<td>60</td>
						<td>0%</td>
					</tr>

				</table>
			</div>
			<div id="order-detail-content">
				<a></a>
			</div>

			<div id="order-detail-line">
				<a class="order-detail-subtitle">采购条件</a>
			</div>
			<div id="order-detail-content">
				<a class="black inline">条件：</a><a class="blue inline-b">标准条件</a>
			</div>

			<div id="order-detail-line">
				<a class="order-detail-subtitle">备注－适用于整个ERP订单</a>
			</div>
			<div id="order-detail-content">
				<button class="btn-w">添加备注</button>
			</div>

			<div id="order-detail-line">
				<a class="order-detail-subtitle">附件－适用于整个ERP订单</a>
			</div>
			<div id="order-detail-content">
				<button class="btn-w">添加附件</button>
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
