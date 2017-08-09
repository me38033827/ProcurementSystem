<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>物流跟踪搜索界面</title>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">搜索</a> <a
				class="black inline-b">类型：</a>
			<div class="btn-group">
				<button data-toggle="dropdown"
					class="btn btn-default dropdown-toggle inline-b"
					id="order-filter-select1">
					物流跟踪&nbsp;&nbsp;&nbsp;&nbsp; <span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="approvalSearching.jsp">审批流</a></li>
					<li><a href="orderSearching.jsp">订购单</a></li>
					<li><a href="receiptSearching.jsp">收货记录</a></li>
					<li><a href="#">物流跟踪</a></li>
					<li><a href="invoiceSearching.jsp">发票</a></li>
					<li><a href="paymentSearching.jsp">支付</a></li>
				</ul>
			</div>
		</div>

		<!-- 主要内容 -->
		<div class="main-subjects">
			<!-- 右侧 -->
			<div id="filter">
				<a id="order-filter-right-title">物流跟踪</a> <a
					id="order-filter-right-title2">查看所有</a> <a
					id="order-filter-right-sub"> <span
					class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
					&nbsp;&nbsp;我的标签
				</a> <a id="order-filter-right-subcontent">无项目</a> <a
					id="order-filter-right-sub"> <span
					class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
					&nbsp;&nbsp;我保存的搜索设置
				</a> <a id="order-filter-right-subcontent">无项目</a> <a
					id="order-filter-right-sub"> <span
					class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
					&nbsp;&nbsp;公共的保存搜索
				</a> <a id="order-filter-right-subcontent">无项目</a>
			</div>

			<!-- 搜索显示区域 -->
			<div class="results-out">
				<a class="black f-14">请更改搜索条件或名称，然后进行搜索</a>
				<div id="delivery-filter">
					<div id="order-filter-line1">
						<div class="left black" id="order-filter-line1-title">搜索筛选器</div>
						<div class="right blue" id="order-filter-line1-option">搜索选项</div>
					</div>
					<div id="delivery-filter-line2">
						<div class="left" id="order-filter-left">
							<table>
								<tr>
									<td class="order-filter-left-col1">订单号：</td>
									<td class="order-filter-left-col2"><input
										class="form-control input" id="delivery-search-item1" /></td>
								</tr>
								<tr>
									<td class="order-filter-left-col1">承运公司：</td>
									<td class="order-filter-left-col2"><select id="my-select"
										style="width: 200px;">
											<option>顺丰</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
								</tr>
								<tr>
									<td></td>
									<td>
										<button class="btn-w" id="delivery-search-item3"
											onclick="window.location.href='delivery-detail.jsp'">跟踪</button>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="other/footer.jsp"%>
	
</body>
</html>
