<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ProcurementSystem.common.*"%>
<%@ page import="com.ProcurementSystem.entity.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../../other/header1.jsp"%>
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="../../css/commodityNav.css" rel="stylesheet" type="text/css" />
<style type="text/css">
	table>tbody>tr>td{
		font-size:16px;
	}
</style>
</head>
<body>
	<%
		PageParams<Commodity> pageParams = (PageParams<Commodity>) request.getAttribute("pageParams");
		//获得购物车大小
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
		String size = "0";
		if (shoppingCart != null)
			size = shoppingCart.getTotalQuantity() + "";
	%>
	<div id="thirdline-out">
		<div class="col-md-2 inline-b left">
			<select class="col-md-12" id="my-select"
				style="background-color: transparent">
				<option>按类别采购</option>
				<option>按＊＊采购</option>
				<option>按＊＊采购</option>
			</select>
		</div>
		<div class="col-md-2 inline-b left" id="search-service">
			<select class="col-md-12" id="my-select">
				<option>服务</option>
				<option>服务</option>
				<option>服务</option>
			</select>
		</div>

		<!-- 第三行搜索框 -->
		<input type="text" class="inline-b border-g left col-md-4"
			value="按部件号、供应商名称或关键字搜索"
			onfocus="if(this.value=='按部件号、供应商名称或关键字搜索') this.value=''"
			onblur="if(this.value=='')this.value='按部件号、供应商名称或关键字搜索' ">
		<button class="btn btn-default inline-b border-g left" id="search-btn">
			<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
		</button>
		<!-- 第三行右侧图标 -->
		<div class="thirdline-icons">
			<button class="shopping-cart-btn"
				onclick="window.location.href='commodityCatalogShoppingCart'">
				<span class="glyphicon glyphicon-shopping-cart shopping-cart-icon"
					aria-hidden="true"></span>

				<div class="shopping-cart-size right" id="shoppingCartSize"><%=size%></div>
			</button>
			<button class="btn-w " style="margin-right: 20px;"
				onclick="window.location.href='commodityCatalogList'">目录管理</button>
		</div>
	</div>
	<div class="content">
		<div class="container">
			<div class="standart-out">
				<div class="row">
					<div class="col-md-12">
						<div class="border-bottom-grey ">
							<!-- 面包屑导航 -->
							<ol class="breadcrumb bread-nav">
								<li><a
									href="/ProcurementSystem/buyer/commodityCatalog?currPage=${currPage}&code=${code}"><i
										class="fa fa-angle-double-left" aria-hidden="true"></i>返回 </a></li>
								<li><a href="/ProcurementSystem/buyer/commodityCatalog">目录主页</a></li>
								<c:forEach var="node" items="${breadNav}" varStatus="status">
									<c:if test="${status.last == false }">
										<li><a
											href="/ProcurementSystem/buyer/commodityCatalog?code=${node.spscCode}">${node.name }</a></li>
									</c:if>
									<c:if test="${status.last == true }">
										<li class="active">${node.name }</li>
									</c:if>
								</c:forEach>
							</ol>
						</div>
					</div>
				</div>
				<div class="row" style="padding: 10px 50px 10px 50px;">

					<div class="col-md-6 border-right-grey">
						<div style="padding-right: 100px;" class="right">
							<div class="left">
								<%-- <img alt="" id="image-${commodity.uniqueName }"
									src="${commodity.thumbnail }"
									onerror="error('image-${commodity.uniqueName }');"
									width="220px" height="220px"> --%>

								<div class="">
									<div class="bigImg">
										<img id=iimage-${commodity.uniqueName}
											onerror="error('iimage-${commodity.uniqueName }');"
											src="http://47.93.188.228/ProcurementSystem/upload/${commodity.commodityCatalog.uniqueName }/${commodity.thumbnail}">
									</div>
									<div class="smallImgs">
										<!-- 	<p class="left">
											<strong><i class="fa fa-angle-left"
												style="font-size: 50px; color:#ddd"></i></strong>
										</p> -->
										<c:forEach var="path" items="${paths}">
											<div class="smallImg left">
												<img id=image-${commodity.uniqueName}
													src="http://47.93.188.228/ProcurementSystem/upload/${commodity.commodityCatalog.uniqueName }/${path}"
													onerror="error('image-${commodity.uniqueName }');">
											</div>
										</c:forEach>
										<!-- <div class="smallImg">
											<img src="/ProcurementSystem/images/shangpinxiangqing/X7.png">
										</div>
										<div class="smallImg">
											<img src="/ProcurementSystem/images/shangpinxiangqing/X8.png">
										</div>
										<div class="smallImg">
											<img src="/ProcurementSystem/images/shangpinxiangqing/X9.png">
										</div>
										<div class="smallImg">
											<img
												src="/ProcurementSystem/images/shangpinxiangqing/X10.png">
										</div>
										 -->
										<!-- <p class="left" >
											<strong><i class="fa fa-angle-right"
												style="font-size: 50px;color:#ddd"></i></strong>
										</p> -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">

						<div class="" style="padding-left: 100px;">
							<div class="standard-title-main margin-bottom">
								<strong>${commodity.shortName }</strong>
							</div>
							<table class="commodity-item-table">
								<tr>
									<td class="right">供应商：</td>
									<td><a
										href="/ProcurementSystem/buyer/supplier/supplierDetail?id=${commodity.supplier.uniqueName }">
											${commodity.supplier.name }</a></td>
								</tr>
								<tr>
									<td class="right">供应商部件号：</td>
									<td>${commodity.supplierPartId }</td>
								</tr>
								<tr>
									<td class="right">制造商：</td>
									<td>${commodity.manufacturerName }</td>
								</tr>

								<tr>
									<td class="right">合同：</td>
									<td>C${commodity.contract.uniqueName }</td>
								
								</tr>
								<tr>
									<td class="right">价格：</td>
									<td><div class="item-price-green">￥${commodity.unitPrice }
											</div>
										<div class="item-price-grey">&nbsp;／${commodity.unitOfMeasure}</div></td>
								</tr>
							</table>
							<div>
								<br>
								<div class="item-price-black">
									数量： <input class="item-quantity"
										id="quantity_${commodity.uniqueName }" value="1" />
									<button class="item-add"
											onclick="add(${commodity.uniqueName});">添加到购物车</button>
								</div>
								<div>
									<a class="item-price-blue">添加到收藏夹</a>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="row" style="padding: 10px 50px 10px 50px;">
					<div class="col-md-12">
						<div class="margin-bottom">
							<div class="standard-subtitle">产品说明</div>
							<div style="font-size:16px; ">${commodity.itemDescription }</div>
							<br>
						</div>
						<div>
							<div class="standard-subtitle">产品规格</div>
							<div>
								<table class="table table-hover">
									<tr>
										<td style="border: 0px">价格：</td>
										<td style="border: 0px">${commodity.unitPrice }</td>
									</tr>
									<tr>
										<td>供应商：</td>
										<td>${commodity.supplier.name }</td>
									</tr>
									<tr>
										<td>供应商部件号：</td>
										<td>${commodity.supplierPartId }</td>
									</tr>
									<tr>
										<td>制造商：</td>
										<td>${commodity.manufacturerName }</td>
									</tr>
									<tr>
										<td>剩余时间：</td>
										<td>${commodity.timeLeft }</td>
									</tr>
									<tr>
										<td>Company Code:</td>
										<td>${commodity.companyCode }</td>
									</tr>
									<tr>
										<td>Contract Number:</td>
										<td>C${commodity.contract.uniqueName }</td>
									</tr>
									
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	function add(uniqueName){
		var quantity = $("#quantity_"+uniqueName).val();
		addShoppingCart(uniqueName,quantity);
	}
	$(document).ready(function(){
		var $miaobian=$('.smallImgs>div');
		var $huantu=$('.bigImg>img');
		/* var $miaobian1=$('.Xcontent26>div'); */
		$miaobian.mousemove(function(){miaobian(this);});
		/* $miaobian1.click(function(){miaobian1(this);}); */
		function miaobian(thisMb){
			for(var i=0; i<$miaobian.length; i++){
				$miaobian[i].style.borderColor = '#dedede';
			}
			thisMb.style.borderColor = '#cd2426';

			$huantu[0].src = thisMb.children[0].src;
		}
		function miaobian1(thisMb1){
			for(var i=0; i<$miaobian1.length; i++){
				$miaobian1[i].style.borderColor = '#dedede';
			}
//	thisMb.style.borderColor = '#cd2426';
		$miaobian.css('border-color','#dedede');
		thisMb1.style.borderColor = '#cd2426';
		$huantu[0].src = thisMb1.children[0].src;
		}
})
</script>
</html>