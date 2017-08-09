<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>合同搜索界面</title>
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
					合同&nbsp;&nbsp;&nbsp;&nbsp; <span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="approvalSearching.jsp">审批流</a></li>
					<li><a href="orderSearching.jsp">订购单</a></li>
					<li><a href="receiptSearching.jsp">收货记录</a></li>
					<li><a href="deliverySearching.jsp">物流跟踪</a></li>
					<li><a href="invoiceSearching.jsp">发票</a></li>
					<li><a href="#">支付</a></li>
				</ul>
			</div>
		</div>


		<!-- 主要内容 -->
		<div class="main-subjects">
			<!-- 右侧 -->
			<div id="filter">
				<a id="order-filter-right-title">合同</a> <a
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
						<div>
							<select id="my-select" >
								<option>是合同请求</option>
								<option>选项1</option>
								<option>选项2</option>
							</select>
							<div class="radio inline-b">
								<label><input type="radio" name="hide"
									id="optionsRadios1" value="option1">是</label> <label><input
									type="radio" name="hide" id="optionsRadios2" value="option2">否</label>
								<label><input type="radio" name="hide"
									id="optionsRadios3" value="option3" checked>是或否</label>
							</div>
						</div>
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
							<a class="black">找到122个项目</a>
						</div>
						<div class="right">
							<button class="icon-btn">
								<span class="glyphicon glyphicon-th icon" aria-hidden="true"></span>
							</button>
							<a class="grey inline-b">|</a>
							<button class="icon-btn">
								<span class="glyphicon glyphicon-chevron-down icon"
									aria-hidden="true"></span>
							</button>
						</div>
					</div>
				</div>

				<div id="order-result-out">
					<div>
						<table class="fulltab">
							<tr class="searching-tab-row1">
								<td class="contract-t-col1">标题</td>
								<td class="contract-t-col2">所有者</td>
								<td class="contract-t-col3">合同标识符</td>
								<td class="contract-t-col4">供应商或客户</td>
								<td class="contract-t-col5">失效日期</td>
								<td class="contract-t-col6">状态</td>
							</tr>
						</table>
					</div>
					<div id="contract-tab">
						<table class="fulltab">
							<tr class="searching-tab-row2">
								<td class="contract-t-col1">HP激光打印机</td>
								<td class="contract-t-col2">用户1</td>
								<td class="contract-t-col3"><a href="contract-detail.jsp">C100569</a></td>
								<td class="contract-t-col4">供应商</td>
								<td class="contract-t-col5">2017年7月14日</td>
								<td class="contract-t-col6">已发布</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="contract-t-col1">激光打印机</td>
								<td class="contract-t-col2">用户2</td>
								<td class="contract-t-col3"><a href="＃">C100567</a></td>
								<td class="contract-t-col4">供应商</td>
								<td class="contract-t-col5">2017年7月14日</td>
								<td class="contract-t-col6">已发布</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="contract-t-col1">墨盒</td>
								<td class="contract-t-col2">用户1</td>
								<td class="contract-t-col3"><a href="＃">C100566</a></td>
								<td class="contract-t-col4">供应商</td>
								<td class="contract-t-col5">2017年7月13日</td>
								<td class="contract-t-col6">已发布</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="contract-t-col1">激光打印机</td>
								<td class="contract-t-col2">用户1</td>
								<td class="contract-t-col3"><a href="＃">C100565</a></td>
								<td class="contract-t-col4">供应商</td>
								<td class="contract-t-col5">2017年7月12日</td>
								<td class="contract-t-col6">已发布</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="contract-t-col1">激光打印机</td>
								<td class="contract-t-col2">用户2</td>
								<td class="contract-t-col3"><a href="＃">C100562</a></td>
								<td class="contract-t-col4">供应商</td>
								<td class="contract-t-col5">2017年7月4日</td>
								<td class="contract-t-col6">已发布</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="contract-t-col1">墨盒</td>
								<td class="contract-t-col2">用户1</td>
								<td class="contract-t-col3"><a href="＃">C100561</a></td>
								<td class="contract-t-col4">供应商</td>
								<td class="contract-t-col5">2017年7月3日</td>
								<td class="contract-t-col6">已发布</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="contract-t-col1">激光打印机</td>
								<td class="contract-t-col2">用户1</td>
								<td class="contract-t-col3"><a href="＃">C100560</a></td>
								<td class="contract-t-col4">供应商</td>
								<td class="contract-t-col5">2017年7月2日</td>
								<td class="contract-t-col6">已发布</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="contract-t-col1">激光打印机</td>
								<td class="contract-t-col2">用户1</td>
								<td class="contract-t-col3"><a href="＃">C100558</a></td>
								<td class="contract-t-col4">供应商</td>
								<td class="contract-t-col5">2017年7月12日</td>
								<td class="contract-t-col6">已发布</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="contract-t-col1">激光打印机</td>
								<td class="contract-t-col2">用户2</td>
								<td class="contract-t-col3"><a href="＃">C100556</a></td>
								<td class="contract-t-col4">供应商</td>
								<td class="contract-t-col5">2017年7月4日</td>
								<td class="contract-t-col6">已发布</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="contract-t-col1">墨盒</td>
								<td class="contract-t-col2">用户1</td>
								<td class="contract-t-col3"><a href="＃">C100555</a></td>
								<td class="contract-t-col4">供应商</td>
								<td class="contract-t-col5">2017年7月3日</td>
								<td class="contract-t-col6">已发布</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="contract-t-col1">激光打印机</td>
								<td class="contract-t-col2">用户1</td>
								<td class="contract-t-col3"><a href="＃">C100554</a></td>
								<td class="contract-t-col4">供应商</td>
								<td class="contract-t-col5">2017年7月2日</td>
								<td class="contract-t-col6">已发布</td>
							</tr>
						</table>
					</div>
					<div>
						<table class="fulltab">
							<tr class="searching-tab-row3">
								<td colspan="6">
									<button class="btn-w">复制</button>
									<button class="btn-w">删除</button>
									<button class="btn-w">新建</button>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="other/footer.jsp" %>
	
</body>
</html>
