<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试－购买</title>
<%@include file="../other/supplierHeader1.jsp"%>
</head>
<body>
	<div class="container">
		<div id="order-detail-main">
			<div class="standard-title">
				<a class="standard-title-main">测试目录</a>
				<div class="standard-title-r">
					<button class="btn-b" onclick="window.location.href='commodityCatalogTestCart.jsp'">添加到购物车</button>
					<button class="btn-w">退出</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<div id="order-detail-main">
					<div class="commodity-catalog-edit-left left blue">
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-clicked" onclick="window.location.href='commodityCatalogTestPurchase.jsp'">1 购买</button>
						<button id="commodity-catalog-edit-left-not-clicked" onclick="window.location.href='commodityCatalogTestCart.jsp'">2 提交购物车</button>
						<button id="commodity-catalog-edit-left-not-clicked" onclick="window.location.href='commodityCatalogTestOrder.jsp'">3 查看订单</button>
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
						<div class="commo-searching">
							<span class="glyphicon glyphicon glyphicon-play" aria-hidden="true" style="font-size:0.8em;"></span> 搜索
						</div>
					</div>
					<div class="standard-title-main">目录项（9）</div>
					<div class="right detail-info"><a href="">查看项目详细信息</a></div>
					<div class="table-container">
						<table class="table table-hover">
							<tr class="standard-row1">
								<th width="5%"></th>
								<th width="20%">供应商 &#8593;</th>
								<th width="40%">说明</th>
								<th width="15%">价格</th>
								<th width="20%">计量单位</th>
							</tr>
						</table>
						<div id="sourcing-tab" style="border-bottom: 2px solid #ddd">
							<table class="table table-hover">
								<tr>
									<td width="5%" style="padding:5px;">
										<input type="checkbox" id="commo-t1" class="chk" /><label for="commo-t1"></label>
									</td>
									<td width="20%">SU0000134</td>
									<td width="40%">激光打印机PRI07</td>
									<td width="15%">¥1299.00</td>
									<td width="20%">台</td>
								</tr>
								<tr>
									<td width="5%" style="padding:5px;">
										<input type="checkbox" id="commo-t2" class="chk" /><label for="commo-t2"></label>
									</td>
									<td width="20%">SU0000134</td>
									<td width="40%">激光打印机PRI06</td>
									<td width="15%">¥1199.00</td>
									<td width="20%">台</td>
								</tr>
								<tr>
									<td width="5%" style="padding:5px;">
										<input type="checkbox" id="commo-t3" class="chk" /><label for="commo-t3"></label>
									</td>
									<td width="20%">SU0000134</td>
									<td width="40%">激光打印机PRI05</td>
									<td width="15%">¥799.00</td>
									<td width="20%">台</td>
								</tr>
								<tr>
									<td width="5%" style="padding:5px;">
										<input type="checkbox" id="commo-t4" class="chk" /><label for="commo-t4"></label>
									</td>
									<td width="20%">SU0000134</td>
									<td width="40%">激光打印机PRI04</td>
									<td width="15%">¥999.00</td>
									<td width="20%">台</td>
								</tr>
								<tr>
									<td width="5%" style="padding:5px;">
										<input type="checkbox" id="commo-t5" class="chk" /><label for="commo-t5"></label>
									</td>
									<td width="20%">SU0000134</td>
									<td width="40%">彩色打印机PRI03</td>
									<td width="15%">¥499.00</td>
									<td width="20%">台</td>
								</tr>
								<tr>
									<td width="5%" style="padding:5px;">
										<input type="checkbox" id="commo-t6" class="chk" /><label for="commo-t6"></label>
									</td>
									<td width="20%">SU0000134</td>
									<td width="40%">黑白打印机PRI14</td>
									<td width="15%">¥299.00</td>
									<td width="20%">台</td>
								</tr>
								<tr>
									<td width="5%" style="padding:5px;">
										<input type="checkbox" id="commo-t7" class="chk" /><label for="commo-t7"></label>
									</td>
									<td width="20%">SU0000134</td>
									<td width="40%">黑白打印机PRI13</td>
									<td width="15%">¥398.00</td>
									<td width="20%">台</td>
								</tr>
								<tr>
									<td width="5%" style="padding:5px;">
										<input type="checkbox" id="commo-t8" class="chk" /><label for="commo-t8"></label>
									</td>
									<td width="20%">SU0000134</td>
									<td width="40%">黑白打印机PRI12</td>
									<td width="15%">¥398.00</td>
									<td width="20%">台</td>
								</tr>
								<tr>
									<td width="5%" style="padding:5px;">
										<input type="checkbox" id="commo-t9" class="chk" /><label for="commo-t9"></label>
									</td>
									<td width="20%">SU0000134</td>
									<td width="40%">黑白打印机PRI11</td>
									<td width="15%">¥259.00</td>
									<td width="20%">台</td>
								</tr>
								<tr>
									<td width="5%" style="padding:5px;">
										<input type="checkbox" id="commo-t9" class="chk" /><label for="commo-t9"></label>
									</td>
									<td width="20%">SU0000134</td>
									<td width="40%">黑白打印机PRI10</td>
									<td width="15%">¥369.00</td>
									<td width="20%">台</td>
								</tr>
								
							</table>
						</div>
					</div>
				</div>
			</div>	
		</div>
		<div id="order-detail-main">
			<div class="commodity-ending">
				<div class="table-bottom-btn right">
					<button class="btn-b" onclick="window.location.href='commodityCatalogTestCart.jsp'">添加到购物车</button>
					<button class="btn-w">退出</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>