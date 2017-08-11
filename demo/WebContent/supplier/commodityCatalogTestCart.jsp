<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试－提交购物车</title>
<%@include file="../other/supplierHeader1.jsp"%>
</head>
<body>
	<div class="container">
		<div id="order-detail-main">
			<div class="standard-title">
				<a class="standard-title-main">测试目录</a>
				<div class="standard-title-r">
					<button class="btn-w"
						onclick="window.location.href='commodityCatalogTestPurchase.jsp'">上一步</button>
					<button class="btn-b"
						onclick="window.location.href='commodityCatalogTestOrder.jsp'">提交购物车</button>
					<button class="btn-w">退出</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<div id="order-detail-main">
					<div class="commodity-catalog-edit-left left blue">
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"
							onclick="window.location.href='commodityCatalogTestPurchase.jsp'">1
							购买</button>
						<button id="commodity-catalog-edit-left-clicked"
							onclick="window.location.href='commodityCatalogTestCart.jsp'">2
							提交购物车</button>
						<button id="commodity-catalog-edit-left-not-clicked"
							onclick="window.location.href='commodityCatalogTestOrder.jsp'">3
							查看订单</button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
					</div>
				</div>
			</div>


			<div class="col-md-10">
				<div class="container-padding">
					<div>查看和测试您的购物车。请编辑项目详细信息，然后提交购物车，以便在下一步生成订单。可以查看并修改购物车的cXML详细信息。</div>
					<div class="standard-title-main">购物车内容（2）</div>
					<div class="right detail-info">
						<a href="">查看项目详细信息</a>
					</div>
					<div class="table-container">
						<table class="table table-hover">
							<tr class="standard-row1">
								<th width="5%"></th>
								<th width="20%">供应商 &#8593;</th>
								<th width="20%">说明</th>
								<th width="15%">数量</th>
								<th width="20%">单价</th>
								<th width="10%">计量单位</th>
								<th width="10%">金额</th>
							</tr>
							<tr>
								<td width="5%" style="padding: 5px;"><input type="checkbox"
									id="commo-c1" class="chk" /><label for="commo-c1"></label></td>
								<td>SU0000134</td>
								<td>激光打印机PRI05</td>
								<td style="padding: 3px;"><input class="commo-amount"
									value="1" /></td>
								<td>¥799.00</td>
								<td>台</td>
								<td>¥799.00</td>
							</tr>
							<tr>
								<td width="5%" style="padding: 5px;"><input type="checkbox"
									id="commo-c2" class="chk" /><label for="commo-c2"></label></td>
								<td>SU0000134</td>
								<td>彩色打印机PRI03</td>
								<td style="padding: 3px;"><input class="commo-amount"
									value="1" /></td>
								<td>¥499.00</td>
								<td>台</td>
								<td>¥499.00</td>
							</tr>
							<tr class="standard-row3">
								<td colspan="7"><a class="arrow-turn">&#8627;</a>
									<button class="btn-w">删除</button> ｜
									<button class="btn-w">更新数量</button></td>
							</tr>
						</table>
					</div>
					<div class="table-container">
						<div class="commo-cart-r">
							<div class="row">
								<div class="col-md-6">
									<div class="commo-abstract">
										<b>购物车摘要</b>
									</div>
								</div>
								<div class="col-md-6">
									<div class="commo-detail">
										<table>
											<tr>
												<td>项目：</td>
												<td><b>2</b></td>
											</tr>
											<tr>
												<td>总计：</td>
												<td><b>¥1298.00</b></td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<div id="order-detail-main">
			<div class="commodity-ending">
				<div class="table-bottom-btn right">
					<button class="btn-w"
						onclick="window.location.href='commodityCatalogTestPurchase.jsp'">上一步</button>
					<button class="btn-b"
						onclick="window.location.href='commodityCatalogTestOrder.jsp'">提交购物车</button>
					<button class="btn-w">退出</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>