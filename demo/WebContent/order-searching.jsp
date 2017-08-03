<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>订单搜索界面</title>
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
					订购单&nbsp;&nbsp;&nbsp;&nbsp; <span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="approval-searching.html">审批流</a></li>
					<li><a href="#">订购单</a></li>
					<li><a href="receipt-searching.html">收货记录</a></li>
					<li><a href="delivery-searching.html">物流跟踪</a></li>
					<li><a href="invoice-searching.html">发票</a></li>
					<li><a href="payment-searching.html">支付</a></li>
				</ul>
			</div>
		</div>


		<!-- 主要内容 -->
		<div class="main-subjects">
			<!-- 右侧 -->
			<div id="filter">
				<a id="order-filter-right-title">订购单</a> <a
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
					<div>
						<div align="left" class="inline-b col-md-6"
							style="padding-left: 10%;">
							<table>
								<tr>
									<td class="order-filter-left-col1">订单标题：</td>
									<td class="order-filter-left-col2"><input
										class="form-control input" /></td>
								</tr>
								<tr>
									<td class="order-filter-left-col1">订单方式：</td>
									<td class="order-filter-left-col2"><input
										class="form-control input" /></td>
								</tr>
								<tr>
									<td class="order-filter-left-col1">创建日期：</td>
									<td class="order-filter-left-col2"><select id="my-select">
											<option>自定义</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
								</tr>
								<tr>
									<td class="order-filter-left-col1"></td>
									<td class="order-filter-left-col2">从： <input
										id="order-filter-fromto" class="form-control input inline-b"
										value="2017年3月18日（星期六）>" />
									</td>
								</tr>
								<tr>
									<td class="order-filter-left-col1"></td>
									<td class="order-filter-left-col2">到： <input
										id="order-filter-fromto" class="form-control input inline-b"
										value="2017年4月2日（星期日）  >" />
									</td>
								</tr>
								<tr>
									<td class="order-filter-left-col1">订单标识符：</td>
									<td class="order-filter-left-col2"><input
										class="form-control input" /></td>
								</tr>
								<tr>
									<td class="order-filter-left-col1">订购方式：</td>
									<td class="order-filter-left-col2"><select id="my-select">
											<option>无选择</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
								</tr>
								<tr>
									<td class="order-filter-left-col1">订购日期：</td>
									<td class="order-filter-left-col2"><select id="my-select">
											<option>无选择</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
								</tr>
								<tr>
									<td class="order-filter-left-col1">供应商：</td>
									<td class="order-filter-left-col2">（选择一个值）［&nbsp;<a
										class="blue inline-b">选择</a>&nbsp;］
									</td>
								</tr>
							</table>
						</div>
						<div class="right inline-b" style="padding-right: 10%;">
							<table>
								<tr>
									<td class="order-filter-right-col1">关闭订单：</td>
									<td class="order-filter-right-col2"><select id="my-select">
											<option>无选择</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
								</tr>
								<tr>
									<td class="order-filter-right-col1">请购单标识符：</td>
									<td class="order-filter-right-col2"><input
										class="form-control input" /></td>
								</tr>
								<tr>
									<td class="order-filter-right-col1">请求人：</td>
									<td class="order-filter-right-col2">（选择一个值）［&nbsp;<a
										class="blue inline-b">选择</a>&nbsp;］
								</tr>
								<tr>
									<td class="order-filter-right-col1">收据标识符（任何收据）：</td>
									<td class="order-filter-right-col2"><input
										class="form-control input" /></td>
								</tr>
								<tr>
									<td class="order-filter-right-col1">收据日期（任何收据）：</td>
									<td class="order-filter-right-col2"><select id="my-select">
											<option>无选择</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
								</tr>
								<tr>
									<td class="order-filter-right-col1">收据状态（任何收据）：</td>
									<td class="order-filter-right-col2"><select id="my-select">
											<option>无选择</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
								</tr>
								<tr>
									<td class="order-filter-right-col1">状态：</td>
									<td class="order-filter-right-col2"><select id="my-select">
											<option>无选择</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
								</tr>

							</table>
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
							<a class="black">找到189个项目</a>
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
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">订单标识符</td>
								<td class="order-t-col3">类型</td>
								<td class="order-t-col4">标题</td>
								<td class="order-t-col5">状态</td>
								<td class="order-t-col6">创建日期</td>
								<td class="order-t-col7">供应商名称</td>
								<td class="order-t-col8">总计</td>
								<td class="order-t-col9">负责人</td>
							</tr>
						</table>
					</div>
					<div id="order-tab-new">
						<table class="fulltab">
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000080</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已取消</td>
								<td class="order-t-col6">2017年7月4日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,164.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2"><a href="order-detail.jsp">10000081</a></td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月4日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">888.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000082</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">正在接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,161.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="order-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="order-t-col2">10000083</td>
								<td class="order-t-col3">类型1</td>
								<td class="order-t-col4">标题1</td>
								<td class="order-t-col5">已接收</td>
								<td class="order-t-col6">2017年7月5日</td>
								<td class="order-t-col7">供应商1</td>
								<td class="order-t-col8">1,168.00CNY</td>
								<td class="order-t-col9">负责人1</td>
							</tr>
						</table>
					</div>
					<div>
						<table class="fulltab">
							<tr class="searching-tab-row3">
								<td colspan="8">
									<button class="btn-w">复制</button>
									<button class="btn-w">删除</button>
									<button class="btn-w" onclick="window.location.href='pr-creation.jsp'">新建</button>
								</td>
							</tr>
						</table>
					</div>
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
