<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ProcurementSystem.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1.jsp"%>
<%@include file="../../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<%
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
		int size = 0;
		if (shoppingCart != null)
			size = shoppingCart.getCommodities().size();
	%>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容开始 -->
				<div class="container-all">
					<div class="page-title">
						<a class="inline-b black page-title-font">PR19723：</a>
						<div class="inline-b right">
							<button class="btn-w"
								onclick="window.location.href='commodityCatalog'">继续购物</button>
							<button class="btn-b"
								onclick="window.location.href='prCreation1.jsp'">结账</button>
						</div>
					</div>
					<!-- 购物车内商品 -->
					<div class="settlement-line2">
						<div>
							<!-- 购物车内商品列表 -->
							<div class="table-responsive col-md-12">
								<form action="commodityCatalogDeleteShoppingCart" method="post">
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
										<c:forEach items="${sessionScope.shoppingCart.commodities}"
											var="commodity" varStatus="status">
											<tr>
												<td><input type="checkbox" id="${commodity.uniqueName }" class="chk"
													name="commodityUniqueNames" value="${commodity.uniqueName }" /><label
													for="${commodity.uniqueName }"></label></td>
												<td>${status.count}</td>
												<td></td>
												<td>${commodity.itemDescription }</td>
												<td><input class="settlement-amount"
													value="${commodity.buyQuantity }"
													name="buyQuantity_${commodity.uniqueName }" /></td>
												<td>${commodity.unitOfMeasure }</td>
												<td>${commodity.unitPrice }</td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td>${commodity.unitPrice * commodity.buyQuantity}</td>
											</tr>
										</c:forEach>
										<tr>
											<td colspan="2"><button class="btn-w" type="submit">删除</button></td>
											<td colspan="8"></td>
											<td colspan="2"><button class="btn-w right" type="submit" formaction="updateShoppingCartBuyQuantity">更新总计</button></td>
										</tr>
									</table>
								</form>
							</div>
						</div>

						<!-- 购物车摘要 -->
						<div class="margin-top-10 container" align="right">
							<table class="col-md-4" id="shopping-cart-abstract">
								<tr id="abstract-line1">
									<td class="settlement-tab2-col1">购物车摘要</td>
									<td class="settlement-tab2-col2"></td>
								</tr>
								<c:forEach items="${sessionScope.shoppingCart.commodities}"
									var="commodity" varStatus="status">
									<tr id="abstract-line2">
										<td class="settlement-tab2-col1">${commodity.shortName}</td>
										<td class="settlement-tab2-col2"><a></a></td>
									</tr>
								</c:forEach>
								<tr id="abstract-line3">
									<td class="settlement-tab2-col1">折扣</td>
									<td class="settlement-tab2-col2">¥0.00</td>
								</tr>
								<tr id="abstract-line4">
									<td class="settlement-tab2-col1">小计 ${shoppingCart.totalAmount }（ <%=size%>个项目）
									</td>
									<td class="settlement-tab2-col2"></td>
								</tr>
							</table>
						</div>
					</div>


					<div class="settlement-line3">
						<div class="right">
							<button class="btn-w"
								onclick="window.location.href='commodityCatalog'">继续购物</button>
							<button class="btn-b"
								onclick="window.location.href='prCreation.jsp'">结账</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	/* function delete(){
		var url="commodityCatalogDeleteShoppingCart?";
		var commodities = document.getElementByName("commodity");
		for(var i=0;i<commodities.length;i++){
			if(commodities[i].checked) url+=""
		}
	}	 */
	</script>
</body>
</html>
