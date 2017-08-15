<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试－查看订单</title>
<%@include file="../other/supplierHeader1.jsp"%>
</head>
<body>
	<div class="container">
		<div id="order-detail-main">
			<div class="standard-title">
				<a class="standard-title-main">测试目录</a>
				<div class="standard-title-r">
					<button class="btn-w" onclick="window.location.href='commodityCatalogTestCart.jsp'">上一步</button>
					<button class="btn-w" style="width:120px;">编辑cXML订购单</button>
					<button class="btn-b">新建测试订单</button>
					<button class="btn-w">退出</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<div id="order-detail-main">
					<div class="commodity-catalog-edit-left left blue">
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked" onclick="window.location.href='commodityCatalogTestPurchase.jsp'">1 购买</button>
						<button id="commodity-catalog-edit-left-not-clicked" onclick="window.location.href='commodityCatalogTestCart.jsp'">2 提交购物车</button>
						<button id="commodity-catalog-edit-left-clicked" onclick="window.location.href='commodityCatalogTestOrder.jsp'">3 查看订单</button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
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
					<div class="table-container">
						<div class="tag-line">
							<button class="tag-clicked" style="width:130px;">测试订购单</button>
							<button class="tag-not-clicked" style="width:130px;">订购单cXML代码</button>
							<button class="tag-not-clicked" style="width:130px;">响应cXML代码</button>
						</div>
						
						<div class="adjust-10"></div>
					
						<div class="row" id="commo-info">
							<div class="col-md-4">
								<a class="black">发件人：</a><br>
								<a class="grey">北京市海淀区上地西路6号联想研究所</a><br>
								<a class="grey">电话：010-57468233</a><br>
								<a class="grey">传真：57468223</a><br>
								<a class="grey">邮政编码：101311</a><br>
								<a class="grey">电子邮件：charlesdempsey@lenovo.com</a>
							</div>
							<div class="col-md-4">
								<a class="black">收件人：</a><br>
								<a class="grey">程家琦</a><br>
								<a class="grey">北京市朝阳区望京戴姆勒大厦A座1302号</a><br>
								<a class="grey">电话：010-66448829</a><br>
								<a class="grey">传真：010-66448899</a><br>
								<a class="grey">邮政编码：100102</a><br>
								<a class="grey">电子邮件：chengjiaqijovia@daimler.com</a><br>
							</div>
							<div class="col-md-4">
								<a class="black">订购单：</a><br>
								<a class="grey">PO1000000998</a><br>
								<a class="grey">金额：¥1298.00</a><br>
								<a class="grey">版本：1</a><br>
							</div>
						</div>
						
						<div class="cart-info-out">	
							<div align="right">
								<a class="grey">传送状态：</a>
								<a class="black">已发送</a>
							</div>
							<div class="cart-info">
								<div class="cart-info-title">
									<a class="black bold">所有项目的送货地址</a>
								</div>
								<a class="grey">北京市朝阳区望京戴姆勒大厦A座1302号</a><br>
								<a class="grey">电话：010-66448829</a><br>
								<a class="grey">传真：010-66448899</a><br>
								<a class="grey">邮政编码：100102</a><br>
								<a class="grey">电子邮件：chengjiaqijovia@daimler.com</a><br>
							</div>
							<div class="cart-info">
								<div class="cart-info-title">
									<a class="black bold">账单寄送地址</a>
								</div>
								<a class="grey">北京市朝阳区望京戴姆勒大厦A座1302号</a><br>
								<a class="grey">电话：010-66448829</a><br>
								<a class="grey">传真：010-66448899</a><br>
								<a class="grey">邮政编码：100102</a><br>
								<a class="grey">电子邮件：chengjiaqijovia@daimler.com</a><br>
							</div>
							<div class="cart-info" style="border:0;">
								<div class="cart-info-title">
									<a class="black bold">接收人</a>
								</div>
								<a class="grey">程家琦</a><br>
							</div>
						</div>
					
					</div>
					
					<div class="standard-title-main">行项目</div>
					<div class="right detail-info"><a href="">显示项目详细信息</a></div>
					
					<div class="table-container">
						<table class="table table-hover">
							<tr class="standard-row1">
								<th width="10%">行号</th>
								<th width="25%">部件号／说明</th>
								<th width="10%">类型</th>
								<th width="15%">数量（单位）</th>
								<th width="20%">价格</th>
								<th width="10%">小计</th>
								<th width="10%"></th>
							</tr>
							<tr>
								<td>1</td>
								<td>P80021/激光打印机PRI05</td>
								<td>物料</td>
								<td>1.00（台）</td>
								<td>¥799.00</td>
								<td>¥799.00</td>
								<td><a href="">详细信息</a></td>
							</tr>
							<tr>
								<td>2</td>
								<td>P80018/彩色打印机PRI03</td>
								<td>物料</td>
								<td>1.00（台）</td>
								<td>¥499.00</td>
								<td>¥499.00</td>
								<td><a href="">详细信息</a></td>
							</tr>
						</table>
						
						<div class="commo-summary">
							<div class="left">
								<a class="grey">订单提交时间：2017年8月11日 星期五 下午14:00</a>
							</div>
							<div class="right" id="commo-summary">
								<a class="grey">小计：¥1298.00</a>
							</div>
						</div>
					</div>
				</div>
			</div>	
		</div>
		<div id="order-detail-main">
			<div class="commodity-ending">
				<div class="table-bottom-btn right">
					<button class="btn-w" onclick="window.location.href='commodityCatalogTestCart.jsp'">上一步</button>
					<button class="btn-w" style="width:120px;">编辑cXML订购单</button>
					<button class="btn-b">新建测试订单</button>
					<button class="btn-w">退出</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>