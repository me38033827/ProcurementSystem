<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>购物车结算界面</title>


</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div id="whole-container">

		<!-- 主要内容开始 -->
		<div class="container-all">
			<div class="page-title">
				<a class="inline-b black page-title-font">PR19723：</a>
				<div class="inline-b right">
					<button class="btn-w"
						onclick="window.location.href='procurementCommodityCatalog.jsp'">继续购物</button>
					<button class="btn-b"
						onclick="window.location.href='prCreation1.jsp'">结账</button>
				</div>
			</div>
			<!-- 购物车内商品 -->
			<div class="settlement-line2">
				<div>
					<!-- 购物车内商品列表 -->
					<div class="table-responsive col-md-12">
						<table class="table table-striped">
							<thead>
								<tr>
									<td colspan="10"><a id="settlement-line2-left-left">总共1个项目</a></td>
									<td colspan="2"><a id="settlement-line2-left-right">显示详细信息</a></td>
								</tr>
							</thead>
							<tr>
								<td></td>
								<td>编号</td>
								<td>类型</td>
								<td>说明</td>
								<td>数量</td>
								<td>单位</td>
								<td>价格</td>
								<td>折扣</td>
								<td>净额</td>
								<td>费用</td>
								<td>税款</td>
								<td>金额</td>
							</tr>
							<tr>
								<td><label> <input type="checkbox">
								</label></td>
								<td>1</td>
								<td>类型1</td>
								<td>说明1</td>
								<td><input class="settlement-amount" value="1" /></td>
								<td>件</td>
								<td>¥656.66</td>
								<td>¥0.00</td>
								<td>¥656.66</td>
								<td>¥0.00</td>
								<td>¥0.00</td>
								<td>¥656.66</td>

							</tr>
							<tr>
								<td colspan="2"><button class="btn-w">删除</button></td>
								<td colspan="8"></td>
								<td colspan="2"><button class="btn-w right">更新总计</button></td>
							</tr>
						</table>
					</div>
				</div>

				<!-- 购物车摘要 -->
				<div class="margin-top-10 container" align="right">
					<table class="col-md-3" id="shopping-cart-abstract">
						<tr id="abstract-line1">
							<td class="settlement-tab2-col1">购物车摘要</td>
							<td class="settlement-tab2-col2"></td>
						</tr>

						<tr id="abstract-line2">
							<td class="settlement-tab2-col1">产品1</td>
							<td class="settlement-tab2-col2"><a>¥656.66</a></td>
						</tr>
						<tr id="abstract-line3">
							<td class="settlement-tab2-col1">折扣</td>
							<td class="settlement-tab2-col2">¥0.00</td>
						</tr>
						<tr id="abstract-line4">
							<td class="settlement-tab2-col1">小计（1个项目）</td>
							<td class="settlement-tab2-col2">¥656.66</td>
						</tr>
					</table>
				</div>
			</div>


			<div class="settlement-line3">
				<div class="right">
					<button class="btn-w"
						onclick="window.location.href='procurementCommodityCatalog.jsp'">继续购物</button>
					<button class="btn-b"
						onclick="window.location.href='prCreation.jsp'">结账</button>
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
