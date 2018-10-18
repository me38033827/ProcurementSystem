<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ProcurementSystem.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1.jsp"%>
<%@include file="../../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
						<a class="inline-b black page-title-font">购物车</a>
						<div class="inline-b right">
							<button class="btn-w"
								onclick="window.location.href='/ProcurementSystem/buyer/commodityCatalog'">继续购物</button>
							<button class="btn-b">结账</button>
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
												<td colspan="10"><a id="settlement-line2-left-left">总共<%=size%>个项目
												</a></td>
												<td colspan="2"><a id="settlement-line2-left-right">显示详细信息</a></td>
											</tr>
										</thead>
										<tr>
											<td></td>
											<td>编号</td>
											<td>简称</td>
											<td>说明</td>
											<td align="center">数量</td>
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
												<td>
												<input type="checkbox" 
													id="${commodity.uniqueName }" class="chk"
													name="commodityUniqueNames"
													value="${commodity.uniqueName }" /><label
													for="${commodity.uniqueName }"></label></td>
												<td>${status.count}</td>
												<td>
												<a href="/ProcurementSystem/buyer/commodityCatalog/commodityInfo?uniqueName=${commodity.uniqueName }&currPage=${pageParams.currPage }&code=${code}">${commodity.shortName }>
												${commodity.shortName } </a></td>
												<td>
												<!-- ${commodity.itemDescription }  -->
												<span>

													<c:if test="${fn:length(commodity.itemDescription) >= 30 }">  
                         							  ${fn:substring(commodity.itemDescription,0,30)}...  
                 								 </c:if> <c:if
														test="${fn:length(commodity.itemDescription) < 30 }">  
                         							 ${commodity.itemDescription }
                 								 </c:if>
											</span></td>
												<td>
													<div class="input-group">
														<span class="input-group-btn">
															<button class="btn btn-default"
																onclick="quantityChange(${commodity.uniqueName },-1)"
																type="button">-</button>
														</span> <input class="commodity-quantity"
															onchange="quantityChangeServer(${commodity.uniqueName })"
															value="${commodity.buyQuantity }"
															name="buyQuantity_${commodity.uniqueName }"
															id="buyQuantity_${commodity.uniqueName }" /> <span
															class="input-group-btn">
															<button class="btn btn-default"
																onclick="quantityChange(${commodity.uniqueName },1)"
																type="button">+</button>
														</span>
													</div>
												</td>
												<td>${commodity.unitOfMeasure }</td>
												<td>￥<fmt:formatNumber value="${commodity.unitPrice }"
														pattern="#00.00#" /></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td id="commodityTotalMoney_${commodity.uniqueName }">￥<fmt:formatNumber
														value="${commodity.unitPrice * commodity.buyQuantity}"
														pattern="#00.00#" /></td>
											</tr>
										</c:forEach>
										<tr>
											<td colspan="2"><button class="btn-w" type="submit">删除</button></td>
											<td colspan="8"></td>
											<td colspan="2"><button class="btn-w right"
													type="submit" formaction="updateShoppingCartBuyQuantity">更新总计</button></td>
										</tr>
									</table>
								</form>

							</div>
						</div>

						<!-- 购物车摘要 -->
						<br>
						<div class="margin-top-10 container" align="right">
							<table class=" margin-top-10 col-md-4"
								id="shopping-cart-abstract">
								<tr id="abstract-line1">
									<td class="settlement-tab2-col1">购物车摘要</td>
									<td class="settlement-tab2-col2"></td>
								</tr>
								<c:forEach items="${sessionScope.shoppingCart.commodities}"
									var="commodity" varStatus="status">
									<tr id="abstract-line2">
										<td class="settlement-tab2-col1">${commodity.shortName}</td>
										<td class="settlement-tab2-col2" id="commodityTotalMoney1_${commodity.uniqueName }"
										>￥<fmt:formatNumber
												value="${commodity.unitPrice * commodity.buyQuantity}"
												pattern="#00.00#" /></td>
									</tr>
								</c:forEach>
								<tr id="abstract-line3">
									<td class="settlement-tab2-col1">折扣</td>
									<td class="settlement-tab2-col2">¥0.00</td>
								</tr>
								<tr id="abstract-line4">
									<td class="settlement-tab2-col1">小计（<%=size%>个项目）：
									</td>
									<td class="settlement-tab2-col2" id="totalMoney"><fmt:formatNumber
											value="${shoppingCart.totalAmount }" pattern="￥#00.00#" /></td>
								</tr>
							</table>
						</div>
					</div>


					<div class="settlement-line3">
						<div class="right">
							<button class="btn-w"
								onclick="window.location.href='/ProcurementSystem/buyer/commodityCatalog'">继续购物</button>
							<button class="btn-b" onclick="">结账</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	</script>
</body>
</html>
