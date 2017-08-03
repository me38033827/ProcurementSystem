<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>物流跟踪界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">

		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">物流跟踪</a>
		</div>

		<!-- 主要内容 -->
		<div class="main-delivery">
			<!-- 搜索显示区域 -->
			<div id="delivery-out">
				<div class="delivery-adjust"></div>
				<div id="order-detail-line">
					<a class="order-detail-subtitle">物流信息</a>
				</div>
				<div class="delivery-adjust"></div>
				<div>
					<table class="delivery-tab1">
						<tr>
							<td>订单号：</td>
							<td class="blue">po151132</td>
						</tr>
						<tr>
							<td>供应商：</td>
							<td>＊＊＊＊＊＊＊＊＊</td>
						</tr>
						<tr>
							<td>创建时间：</td>
							<td>2017年7月14日 16:12</td>
						</tr>
						<tr>
							<td>物流编号：</td>
							<td>12412983219</td>
						</tr>
						<tr>
							<td>物流公司：</td>
							<td>顺丰快递</td>
						</tr>
						<tr>
							<td>运单号码：</td>
							<td>9184712612784274921</td>
						</tr>
					</table>
				</div>
				<div class="delivery-adjust"></div>
				<div class="delivery-adjust"></div>
				<div class="delivery-adjust"></div>
				<div class="delivery-adjust"></div>
				<div class="delivery-adjust"></div>
				<div id="order-detail-line">
					<a class="order-detail-subtitle">物流动态</a>
				</div>
				<div class="delivery-adjust"></div>
				<div>
					<table class="delivery-tab1">
						<tr>
							<td>2017-07-10 09:12:21</td>
							<td>浙江省台州市天台市公司 已收件</td>
						</tr>
						<tr>
							<td>2017-07-10 10:02:22</td>
							<td>浙江省台州市天台市公司 已发出，下一站 北京转运公司</td>
						</tr>
						<tr>
							<td>2017-07-10 11:09:41</td>
							<td>北京转运中心公司 已收入</td>
						</tr>
						<tr>
							<td class="blue">2017-07-10 09:12:21</td>
							<td class="blue">北京转运中心公司 已发出，下一站 北京市朝阳区望京分拣中心</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="other/footer.jsp"%>
	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
