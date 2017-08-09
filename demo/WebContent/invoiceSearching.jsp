<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>发票搜索界面</title>


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
					发票&nbsp;&nbsp;&nbsp;&nbsp; <span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="approvalSearching.jsp">审批流</a></li>
					<li><a href="orderSearching.jsp">订购单</a></li>
					<li><a href="receiptSearching.jsp">收货记录</a></li>
					<li><a href="deliverySearching.jsp">物流跟踪</a></li>
					<li><a href="#">发票</a></li>
					<li><a href="paymentSearching.jsp">支付</a></li>
				</ul>
			</div>
		</div>

		<!-- 主要内容 -->
		<div class="main-subjects">
			<!-- 右侧 -->
			<div id="filter">
				<a id="order-filter-right-title">发票</a> <a
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
					<div id="invoice-filter-line2">
						<div id="order-filter-left" class="inline-b" align="left">
							<table>
								<tr>
									<td class="order-filter-left-col1">创建日期：</td>
									<td class="order-filter-left-col2"><select id="my-select">
											<option>无选择</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
								</tr>

								<tr>
									<td class="order-filter-left-col1">订购单编号：</td>
									<td class="order-filter-left-col2"><input
										class="form-control input" /></td>
								</tr>
								<tr>
									<td class="order-filter-left-col1">发票金额：</td>
									<td class="order-filter-left-col2">从：<input
										class="form-control input inline-b" id="invoice-fromto" />
										&nbsp;&nbsp;&nbsp; 到：<input
										class="form-control input inline-b" id="invoice-fromto" />
										&nbsp;&nbsp;单位：CNY
									</td>
								</tr>
								<tr>
									<td class="order-filter-left-col1">发票类型：</td>
									<td class="order-filter-left-col2"><select id="my-select">
											<option>无选择</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
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
							</table>
						</div>
						<div class="right" id="order-filter-right">
							<table>
								<tr>
									<td class="order-filter-right-col1">供应商：</td>
									<td class="order-filter-right-col2">（选择一个值）［&nbsp;<a
										class="blue inline-b">选择</a>&nbsp;］
								</tr>
								<tr>
									<td class="order-filter-right-col1">供应商发票编号：</td>
									<td class="order-filter-right-col2"><input
										class="form-control input" /></td>
								</tr>
								<tr>
									<td class="order-filter-right-col1">审批者列表：</td>
									<td class="order-filter-right-col2">（选择一个值）［&nbsp;<a
										class="blue inline-b">选择</a>&nbsp;］
								</tr>
								<tr>
									<td class="order-filter-right-col1">预定日期：</td>
									<td class="order-filter-right-col2"><select id="my-select">
											<option>无选择</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
								</tr>
								<tr>
									<td class="order-filter-right-col1">制定者：</td>
									<td class="order-filter-right-col2">（选择一个值）［&nbsp;<a
										class="blue inline-b">选择</a>&nbsp;］
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
						<div align="right">
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
								<td class="invoice-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="invoice-t-col2">发票编号</td>
								<td class="invoice-t-col3">发票日期</td>
								<td class="invoice-t-col4">供应商</td>
								<td class="invoice-t-col5">发票金额</td>
								<td class="invoice-t-col6">最大折扣</td>
								<td class="invoice-t-col7">预定日期</td>
								<td class="invoice-t-col8">状态</td>
								<td class="invoice-t-col9">订单</td>
							</tr>
						</table>
					</div>
					<div id="invoice-tab">
						<table class="fulltab">
							<tr class="searching-tab-row2">
								<td class="invoice-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="invoice-t-col2"><a href="invoice-detail.jsp">INVHP-PRINTER-023-9458</a></td>
								<td class="invoice-t-col3">2017年8月7日</td>
								<td class="invoice-t-col4">中国惠普有限公司</td>
								<td class="invoice-t-col5">2099.00CNY</td>
								<td class="invoice-t-col6">200.00CNY</td>
								<td class="invoice-t-col7">2017年9月30日</td>
								<td class="invoice-t-col8">已提交</td>
								<td class="invoice-t-col9"><a href="">1000000957</a></td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="invoice-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="invoice-t-col2"><a href="">INVHP-PRINTER-022-9457</a></td>
								<td class="invoice-t-col3">2017年8月1日</td>
								<td class="invoice-t-col4">中国惠普有限公司</td>
								<td class="invoice-t-col5">2099.00CNY</td>
								<td class="invoice-t-col6">200.00CNY</td>
								<td class="invoice-t-col7">2017年9月30日</td>
								<td class="invoice-t-col8">正在核算</td>
								<td class="invoice-t-col9"><a href="">1000000956</a></td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="invoice-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="invoice-t-col2"><a href="">INVCanon-PRINTER-006-9455</a></td>
								<td class="invoice-t-col3">2017年7月28日</td>
								<td class="invoice-t-col4">佳能（中国）有限公司</td>
								<td class="invoice-t-col5">1599.00CNY</td>
								<td class="invoice-t-col6">00.00CNY</td>
								<td class="invoice-t-col7">2017年8月30日</td>
								<td class="invoice-t-col8">正在核算</td>
								<td class="invoice-t-col9"><a href="">1000000955</a></td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="invoice-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="invoice-t-col2"><a href="">INVCanon-PRINTER-005-9453</a></td>
								<td class="invoice-t-col3">2017年7月28日</td>
								<td class="invoice-t-col4">佳能（中国）有限公司</td>
								<td class="invoice-t-col5">1599.00CNY</td>
								<td class="invoice-t-col6">0.00CNY</td>
								<td class="invoice-t-col7">2017年8月30日</td>
								<td class="invoice-t-col8">正在撰写</td>
								<td class="invoice-t-col9"><a href="">1000000953</a></td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="invoice-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="invoice-t-col2"><a href="">INVLenovo-PRINTER-031-9452</a></td>
								<td class="invoice-t-col3">2017年7月26日</td>
								<td class="invoice-t-col4">联想（北京）有限公司</td>
								<td class="invoice-t-col5">1599.00CNY</td>
								<td class="invoice-t-col6">0.00CNY</td>
								<td class="invoice-t-col7">2017年9月10日</td>
								<td class="invoice-t-col8">已提交</td>
								<td class="invoice-t-col9"><a href="">1000000952</a></td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="invoice-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="invoice-t-col2"><a href="">INVLenovo-PRINTER-030-9451</a></td>
								<td class="invoice-t-col3">2017年7月26日</td>
								<td class="invoice-t-col4">联想（北京）有限公司</td>
								<td class="invoice-t-col5">1599.00CNY</td>
								<td class="invoice-t-col6">0.00CNY</td>
								<td class="invoice-t-col7">2017年9月10日</td>
								<td class="invoice-t-col8">正在撰写</td>
								<td class="invoice-t-col9"><a href="">1000000951</a></td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="invoice-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="invoice-t-col2"><a href="">INVHP-PRINTER-021-9450</a></td>
								<td class="invoice-t-col3">2017年7月25日</td>
								<td class="invoice-t-col4">中国惠普有限公司</td>
								<td class="invoice-t-col5">2099.00CNY</td>
								<td class="invoice-t-col6">200.00CNY</td>
								<td class="invoice-t-col7">2017年9月30日</td>
								<td class="invoice-t-col8">已核算</td>
								<td class="invoice-t-col9"><a href="">1000000950</a></td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="invoice-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="invoice-t-col2"><a href="">INVCanon-PRINTER-004-9449</a></td>
								<td class="invoice-t-col3">2017年7月21日</td>
								<td class="invoice-t-col4">佳能（中国）有限公司</td>
								<td class="invoice-t-col5">999.00CNY</td>
								<td class="invoice-t-col6">0.00CNY</td>
								<td class="invoice-t-col7">2017年8月20日</td>
								<td class="invoice-t-col8">已核算</td>
								<td class="invoice-t-col9"><a href="">1000000949</a></td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="invoice-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="invoice-t-col2"><a href="">INVHP-PRINTER-019-9448</a></td>
								<td class="invoice-t-col3">2017年7月23日</td>
								<td class="invoice-t-col4">中国惠普有限公司</td>
								<td class="invoice-t-col5">1299.00CNY</td>
								<td class="invoice-t-col6">100.00CNY</td>
								<td class="invoice-t-col7">2017年8月12日</td>
								<td class="invoice-t-col8">正在核算</td>
								<td class="invoice-t-col9"><a href="">1000000948</a></td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="invoice-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="invoice-t-col2"><a href="">INVHP-PRINTER-018-9447</a></td>
								<td class="invoice-t-col3">2017年7月22日</td>
								<td class="invoice-t-col4">中国惠普有限公司</td>
								<td class="invoice-t-col5">1299.00CNY</td>
								<td class="invoice-t-col6">100.00CNY</td>
								<td class="invoice-t-col7">2017年8月12日</td>
								<td class="invoice-t-col8">正在编辑</td>
								<td class="invoice-t-col9"><a href="">1000000947</a></td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="invoice-t-col1"><label> <input
										type="checkbox" class="checkboxes" value="" />
								</label></td>
								<td class="invoice-t-col2"><a href="">INVHP-PRINTER-017-9446</a></td>
								<td class="invoice-t-col3">2017年7月22日</td>
								<td class="invoice-t-col4">中国惠普有限公司</td>
								<td class="invoice-t-col5">1299.00CNY</td>
								<td class="invoice-t-col6">100.00CNY</td>
								<td class="invoice-t-col7">2017年8月12日</td>
								<td class="invoice-t-col8">已核算</td>
								<td class="invoice-t-col9"><a href="">1000000946</a></td>
							</tr>
							
						</table>
					</div>
					<div>
						<table class="fulltab">
							<tr class="searching-tab-row3">
								<td colspan="8">
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
	<%@ include file="other/footer.jsp"%>
	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
