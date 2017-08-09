<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>发票详情界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">
		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">INV123</a> <a
				class="right inline-b black f-18">状态：已拒绝</a>
		</div>
		<div id="order-detail-main">
			<div id="order-detail-line2">
				<a class="black">这是您所选请求的详细信息。根据其状态，您可以对该请求进行编辑、更改、复制、取消或提交进行审批。您还可以打印改请求的详细信息。请复查请求并采取所需的操作。</a>
			</div>
			<div id="order-detail-line3">
				<button class="btn-w">复制</button>
				<button class="btn-w">打印</button>
			</div>
			<div id="order-detail-line4">
				<button class="order-detail-clicked">摘要</button>
				<button class="order-detail-not-clicked">审批流程</button>
				<button class="order-detail-not-clicked">参考</button>
				<button class="order-detail-not-clicked">历史记录</button>
			</div>

			<div class="invoice-detail-title">
				<a class="black">抬头信息</a>
			</div>

			<div class="inline-b" id="invoice-detail2-tab1">
				<table>
					<tr>
						<td id="order-detail-tab-col1">供应商：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">供应商联系人：</td>
						<td id="order-detail-tab-col2">＊＊＊</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">发票标识符：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">供应商发票编号：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">发票日期：</td>
						<td id="order-detail-tab-col2">2017年7月10日</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">类型：</td>
						<td id="order-detail-tab-col2">订购单</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">订单：</td>
						<td id="order-detail-tab-col2"><a href="orderDetail.jsp">10000081</a>
						</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">合同：</td>
						<td id="order-detail-tab-col2">C413423432</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">委托人：</td>
						<td id="order-detail-tab-col2">＊＊＊</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">发票提交方法：</td>
						<td id="order-detail-tab-col2">纸面发票</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">采购单位：</td>
						<td id="order-detail-tab-col2">CD01</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">公司代码：</td>
						<td id="order-detail-tab-col2">CD01</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">税号：</td>
						<td id="order-detail-tab-col2"></td>
					</tr>
					<tr>
						<td id="order-detail-tab-col1">支付方式：</td>
						<td id="order-detail-tab-col2"></td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">Has WHT：</td>
						<td id="order-detail-tab-col2"></td>
					</tr>
					<tr>
						<td id="order-detail-tab-col1">我的标签：</td>
						<td id="order-detail-tab-col2"><div class="blue">
								应用标签...<span class="caret"></span>
							</div></td>
					</tr>
				</table>
			</div>
			<div class="inline-b" id="invoice-detail2-tab2">
				<table>
					<tr>
						<td id="order-detail-tab-col1">付款条件：</td>
						<td id="order-detail-tab-col2">0301</td>
					</tr>

					<tr>
						<td id="order-detail-tab-col1">发货地址：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊</td>
					</tr>
					<tr>
						<td id="order-detail-tab-col1">车间：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊</td>
					</tr>
					<tr>
						<td id="order-detail-tab-col1">收款人地址：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊</td>
					</tr>
					<tr>
						<td id="order-detail-tab-col1">交付地址：</td>
						<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊</td>
					</tr>
				</table>
			</div>



			<div class="invoice-detail-title">
				<a class="black">抬头税款、费用和折扣</a>
			</div>

			<div id="order-tab4-out">
				<table>
					<tr id="order-tab4-row1">
						<td>名称</td>
						<td>类型</td>
						<td>金额</td>
						<td>记账</td>
						<td>详细信息</td>
					</tr>
					<tr>
						<td colspan="5" id="order-tab4-excep">无项目</td>
					</tr>

				</table>
			</div>

			<div class="invoice-detail-title">
				<a class="black">行项目（1）</a>
			</div>
			<div id="order-tab-1">
				<table>
					<tr id="order-tab-1-row1">
						<td><label> <input type="checkbox" class="checkboxes"
								value="" />
						</label></td>
						<td>编号</td>
						<td>说明</td>
						<td>订单</td>
						<td>数量</td>
						<td>单位</td>
						<td>价格</td>
						<td>金额</td>
						<td>折扣</td>
						<td>费用</td>
						<td>税款</td>
						<td>毛额</td>
						<td>记账</td>
						<td>详细信息</td>
					</tr>
					<tr id="order-tab-1-row2">
						<td><label> <input type="checkbox" class="checkboxes"
								value="" />
						</label></td>
						<td>1</td>
						<td>＊＊＊＊＊＊＊</td>
						<td>1000023</td>
						<td>1</td>
						<td>件</td>
						<td>1.00CNY</td>
						<td>1.00CNY</td>
						<td>0.00CNY</td>
						<td></td>
						<td>0.23CNY</td>
						<td>1.23CNY</td>
						<td>（1）</td>
						<td>详细信息</td>
					</tr>
				</table>
				<button class='btn-w' id="invoice-detail-info">详细信息</button>
				<button class='btn-w' id="invoice-detail-info">记账详细信息</button>
			</div>

			<div id="order-tab2-out">
				<div class="right">
					<table>
						<tr>
							<td class="order-tab2-col1">基本金额：</td>
							<td class="order-tab2-col2">1.00CNY</td>
						</tr>
						<tr>
							<td class="order-tab2-col1">折扣：</td>
							<td class="order-tab2-col2">0.00CNY</td>
						</tr>
						<tr>
							<td class="order-tab2-col1">费用：</td>
							<td class="order-tab2-col2">0.00CNY</td>
						</tr>
						<tr>
							<td class="order-tab2-col1">税款：</td>
							<td class="order-tab2-col2">0.23CNY</td>
						</tr>
						<tr>
							<td class="order-tab2-col1">应付供应商款项：</td>
							<td class="order-tab2-col2">1.23CNY</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->

	<%@ include file="other/footer.jsp"%>
	
</body>
</html>
