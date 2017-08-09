<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>审批流程管理界面</title>
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
					审批流&nbsp;&nbsp;&nbsp;&nbsp; <span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="#">审批流</a></li>
					<li><a href="orderSearching.jsp">订购单</a></li>
					<li><a href="receiptSearching.jsp">收货记录</a></li>
					<li><a href="deliverySearching.jsp">物流跟踪</a></li>
					<li><a href="invoiceSearching.jsp">发票</a></li>
					<li><a href="paymentSearching.jsp">支付</a></li>
				</ul>
			</div>
		</div>

		<!-- 主要内容 -->
		<div class="main-subjects">
			<div id="filter">
				<a id="order-filter-right-title">审批流</a> <a
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
				<a class="black f-10 inline-b">根据您的组成员资格管理您拥有的待批件类型的审批流程。审批流程将一组审批规则结合在一起。审批规则确定了哪些用户或组必须审批每个文档，以及适用于规则的任何条件。要打开一个审批流程以查看、修改或激活。
				</a>
				<div id="approval-filter">
					<div id="order-filter-line1">
						<div class="left black" id="order-filter-line1-title">搜索筛选器</div>
						<div class="right blue" id="order-filter-line1-option">搜索选项</div>
					</div>
					<div id="approval-filter-line2">
						<div class="left" id="order-filter-left">
							<table>
								<tr>
									<td class="order-filter-left-col1">标题：</td>
									<td class="order-filter-left-col2"><input
										class="form-control input" /></td>
								</tr>
							</table>
						</div>
						<div class="right" id="order-filter-right">
							<table>
								<tr>
									<td class="order-filter-right-col1">待批件类型：</td>
									<td class="order-filter-right-col2"><select id="my-select">
											<option>所有类型</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
								</tr>
								<tr>
									<td class="order-filter-right-col1">已激活：</td>
									<td>
										<div class="radio">
											<label><input type="radio" name="hide"
												id="optionsRadios1" value="option1">是</label> <label><input
												type="radio" name="hide" id="optionsRadios2" value="option2">否</label>
											<label><input type="radio" name="hide"
												id="optionsRadios3" value="option3" checked>是或否</label>
										</div>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div id="order-filter-line3">
						<div class="right">
							<button class="btn-b">搜索</button>
							<button class="btn-w">重置</button>
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
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">待批件类型</td>
								<td class="approval-t-col3">类型</td>
								<td class="approval-t-col4">标题</td>
								<td class="approval-t-col5">状态</td>
								<td class="approval-t-col6">版本</td>
								<td class="approval-t-col7">编辑人</td>
								<td class="approval-t-col8">上次修改时间</td>
							</tr>
						</table>
					</div>
					<div id="approval-tab">
						<table class="fulltab">
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4"><a href="jsp">审批项目1</a></td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="approval-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="approval-t-col2">预付款</td>
								<td class="approval-t-col3">类型1</td>
								<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
								<td class="approval-t-col5">已签入</td>
								<td class="approval-t-col6">3</td>
								<td class="approval-t-col7">＊＊＊</td>
								<td class="approval-t-col8">2017年7月10日 16:53</td>
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
										onclick="window.location.href='approval-creation.html'">新建</button>
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
