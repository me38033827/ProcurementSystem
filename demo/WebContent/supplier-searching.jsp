<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>供应商和客户管理界面</title>

<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
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
					供应商和客户&nbsp;&nbsp;&nbsp;&nbsp; <span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="#">审批流</a></li>
					<li><a href="order-searching.html">订购单</a></li>
					<li><a href="receipt-searching.html">收货记录</a></li>
					<li><a href="delivery-searching.html">物流跟踪</a></li>
					<li><a href="invoice-searching.html">发票</a></li>
					<li><a href="payment-searching.html">支付</a></li>
				</ul>
			</div>
		</div>

		<!-- 主要内容 -->
		<div class="main-subjects">
			<div id="filter">
				<a id="order-filter-right-title">供应商和客户</a> <a
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
				<div id="filters">
					<div id="order-filter-line1">
						<div class="left black" id="order-filter-line1-title">搜索筛选器</div>
						<div class="right blue" id="order-filter-line1-option">搜索选项</div>
					</div>
					<div id="sourcing-search">
						<input type="text" class="border-g col-md-5"
							value="使用标题、标识符或任何其他词语搜索"
							onfocus="if(this.value=='使用标题、标识符或任何其他词语搜索') this.value=''"
							onblur="if(this.value=='')this.value='使用标题、标识符或任何其他词语搜索' ">
					</div>
					<div id="order-filter-line3">
						<div class="right">
							<button class="btn-b">搜索</button>
							<button class="btn-w">重置</button>
							<button class="btn-w">保存搜索</button>
						</div>
					</div>
				</div>
				<div>
					<div id="order-total">
						<div class="left" id="order-total-title">
							<a class="black">搜索结果</a>
						</div>
						<div class="left" id="order-total-quantity">
							<a class="black">找到129个项目</a>
						</div>
					</div>
				</div>

				<div id="order-result-out">
					<div>
						<table class="fulltab">
							<tr class="searching-tab-row1">
								<td class="supplier-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="supplier-t-col2">组织名称</td>
								<td class="supplier-t-col3">系统标识符</td>
								<td class="supplier-t-col4">审批状态</td>
								<td class="supplier-t-col5">供应商</td>
								<td class="supplier-t-col6">客户</td>
								<td class="supplier-t-col7">操作</td>
							</tr>
						</table>
					</div>
					<div id="supplier-tab">
						<table class="fulltab">
							<tr class="searching-tab-row2">
								<td class="supplier-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="supplier-t-col2">HP</td>
								<td class="supplier-t-col3"><a href="supplier-detail.html">S21331</a></td>
								<td class="supplier-t-col4">已批准</td>
								<td class="supplier-t-col5">是</td>
								<td class="supplier-t-col6">否</td>
								<td class="supplier-t-col7">
									<button class="btn-w">操作</button>
								</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="supplier-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="supplier-t-col2">佳能</td>
								<td class="supplier-t-col3"><a href="＃">S21330</a></td>
								<td class="supplier-t-col4">已批准</td>
								<td class="supplier-t-col5">是</td>
								<td class="supplier-t-col6">否</td>
								<td class="supplier-t-col7">
									<button class="btn-w">操作</button>
								</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="supplier-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="supplier-t-col2">联想</td>
								<td class="supplier-t-col3"><a href="＃">S21329</a></td>
								<td class="supplier-t-col4">已批准</td>
								<td class="supplier-t-col5">是</td>
								<td class="supplier-t-col6">否</td>
								<td class="supplier-t-col7">
									<button class="btn-w">操作</button>
								</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="supplier-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="supplier-t-col2">东芝</td>
								<td class="supplier-t-col3"><a href="＃">S21328</a></td>
								<td class="supplier-t-col4">已批准</td>
								<td class="supplier-t-col5">是</td>
								<td class="supplier-t-col6">否</td>
								<td class="supplier-t-col7">
									<button class="btn-w">操作</button>
								</td>
							</tr>
						</table>
					</div>
					<div>
						<table class="fulltab">
							<tr class="searching-tab-row3">
								<td colspan="8">
									<button class="btn-w">复制</button>
									<button class="btn-w">删除</button>
									<button class="btn-w"
										onclick="window.location.href='supplier-creation.html'">新建</button>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
