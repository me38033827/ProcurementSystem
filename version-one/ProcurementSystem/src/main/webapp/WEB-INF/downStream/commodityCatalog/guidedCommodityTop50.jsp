<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ProcurementSystem.common.*"%>
<%@ page import="com.ProcurementSystem.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>商品目录界面</title>

<%@include file="../../other/header1.jsp"%>
<%@include file="../../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link href="../css/commodityNav.css" rel="stylesheet" type="text/css" />
<script src="../js/commodityNav.js"></script>
</head>
<!-- 页面整体宽度：1320px -->
<body  class="a-dashbrd-page-bg">
<%
		PageParams<Commodity> pageParams = (PageParams<Commodity>) request.getAttribute("pageParams");
		//获得购物车大小
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
		String size = "0";
		String quantity = "0";//商品总数
		if (shoppingCart != null)
			size = shoppingCart.getTotalQuantity() + "";
	%>
	<div>
		
	</div>
	<!-- 导航栏 第三行 -->
	<div>
		<div id="thirdline-out" style="background-color:#ffffffa6; border:0">
			<div class="col-md-3 inline-b left">
				<div class="btn-group">
					<button class="procure-nav" data-toggle="dropdown">
						按类别采购&nbsp;<span class="caret"></span>
					</button>
				</div>
			</div>
			<div class="col-md-2 inline-b left" id="search-service">
				<select class="col-md-12" id="my-select">
					<option>所有类别</option>
				</select>
			</div>

			<!-- 第三行搜索框 -->
			<form action="search" method="post">
				<input type="text" class="inline-b border-g left col-md-4"
					name="content" value="按部件号、供应商名称或关键字搜索"
					onfocus="if(this.value=='按部件号、供应商名称或关键字搜索') this.value=''"
					onblur="if(this.value=='')this.value='按部件号、供应商名称或关键字搜索' ">
				<button class="btn btn-default inline-b border-g left" type="submit"
					id="search-btn">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				</button>
			</form>

			<!-- 第三行右侧图标 -->
			<div class="right">
				<!-- 购物车 -->
				<button class="shopping-cart-btn"
					onclick="window.location.href='commodityCatalog/commodityCatalogShoppingCart'">
					<span class="glyphicon glyphicon-shopping-cart shopping-cart-icon"
						aria-hidden="true"></span>

					<div class="shopping-cart-size right" id="shoppingCartSize"><%=size %></div>
				</button>
				<button class="btn-w " style="margin-right: 20px;"
					onclick="window.location.href='commodityCatalog/commodityCatalogList'">目录管理</button>
			</div>
			<!-- 第三行右侧标记 -->
		</div>
	</div>
	<div class="container" id="whole-container">
		<!-- 主要内容 -->
		<div class="main-subjects">
			<!-- 右侧过滤栏 -->
			<div class="filter">
				<div style="background-color:#ffffffa6">
					<div class="sidebar_con">
						<dl class="sidebar_item">
							<dd>
								<h3 class="">
									<a href="top50">Top 50</a>
								</h3>
							</dd>
							<dd>
								<h3 class="">
									<a href="recommend">推荐产品</a>
								</h3>
							</dd>
							<c:forEach var="node" items="${firstClass}">
								<dd>
									<h3 class="">
										<a href="guidedCommodity?code=${node.spscCode }"> <c:if
												test="${fn:length(node.name) >= 13 }">  
                         					${fn:substring(node.name,0,13)}...
                 						</c:if> <c:if test="${fn:length(node.name) < 13 }">  
                         					${node.name }
                 						</c:if>
										</a>
									</h3>
									<s></s>
									<!-- 弹出层 -->
									<div class="sidebar_popup dis1" style="display: none; background-color:#ffffffa8">
										<div class="sidebar_popup_class clearfix">
											<div class="sidebar_popup_item">
												<strong>${node.name }</strong>
												<c:forEach var="childNode" items="${node.childList}">
													<p>
														<span class="linesbg"><a
															href="guidedCommodity?code=${childNode.spscCode}">${childNode.name }</a></span>
													</p>
												</c:forEach>
											</div>
										</div>
									</div>
								</dd>
							</c:forEach>
							<dd>
								<h3 class="">
									<a href="commodityCatalog?code=-1">未分类项目</a>
								</h3>
							</dd>
						</dl>
					</div>
				</div>
			</div>

			<!-- 面包屑导航 -->
			<div class="col-md-9">
				<div class="results-out" style="padding-top: 0px; border-left:0">
					<div>
						<ol class="breadcrumb bread-nav">
							<li><a href="guidedBuying">Guided Buying主页</a></li>
							<c:forEach var="node" items="${breadNav}" varStatus="status">
								<c:if test="${status.last == true}">
									/ <span class="active">${node.name }</span>
								</c:if>
								<c:if test="${status.last == false}">
									/ <a href="guidedCommodity?code=${node.spscCode }">${node.name }</a>
								</c:if>
							</c:forEach>
						</ol>
						<div class="result-line2"  style="background-color:#ffffffa6">
							<div class="result-line2-left">
								<a class="result-line2-font">找到${pageParams.rowCount}个项目。</a>
							</div>
							<div class="result-line2-middle">
								<span class="result-line2-font">查看方式：</span>
								<button class="trans-btn" id="glyphicon-th"><span
								class="glyphicon glyphicon-th blue" aria-hidden="true"
								></span></button>
							</div>
							<div class="result-line2-right">
								<a class="result-line2-font">排序方式：相关性</a>
							</div>
						</div>
						<div class="adjust-10"></div>
						<!-- 搜索结果 -->
						<div style="width:100% height:360px;">
							<c:forEach var="commodity" items="${requestScope.pageParams.data}">
								<div class="col-md-4 full-height commodity-container">	
									<div class="a-third">
									<div class="a-third-title">
										<a class="black f-14" href="/ProcurementSystem/buyer/commodityCatalog/commodityInfo?uniqueName=${commodity.uniqueName }&currPage=${pageParams.currPage }&code=${code}">${commodity.shortName }</a>
									</div>
									<img class="a-third-img" 
												href="/ProcurementSystem/buyer/commodityCatalog/commodityInfo?uniqueName=${commodity.uniqueName }&currPage=${pageParams.currPage }&code=${code}"
												alt="" id="image-${commodity.uniqueName }"
												src="http://47.93.188.228/ProcurementSystem/upload/${commodity.commodityCatalog.uniqueName}/${commodity.thumbnail }"
												onerror="error('image-${commodity.uniqueName }');"/>
									<div class="a-third-description"><span>${commodity.itemDescription }</span></div>
									<div class="item-price-green">￥${commodity.unitPrice}</div>
									<div class="item-price-grey">&nbsp;／${commodity.unitOfMeasure}</div>
									<br>
									<div class="item-price-black">
										数量： <input class="item-quantity"
											id="quantity_${commodity.uniqueName }" value="1" />
										<button class="item-add"
											onclick="add(${commodity.uniqueName});">添加到购物车</button>
									</div>
									</div>
									<div class="adjust-10"></div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<div style="margin-left:20%;">
					<button class="btn-page" id="forward"
					onclick="window.location.href='top50?currPage=<%=pageParams.getCurrPage() - 1%>'">上一页</button>
				<span id="pageList"></span>
				<button class="btn-page" id="afterward"
					onclick="window.location.href='top50?currPage=${pageParams.currPage+1}'">下一页</button><span>共<strong>${pageParams.totalPages}</strong>页</span>
				</div>
			</div>
		</div>
	</div>
</body>
	<script>
	function createGuidedBuyingButtonPage(i){// i表示页号
		var button = document.createElement("button")// 创建button结点
		var text = document.createTextNode(""+i);
		button.appendChild(text);
		button.id="page"+i;// 设置button属性
		button.setAttribute("class","btn-page");
		button.setAttribute("onclick","window.location.href='top50?currPage="+i+"'");
		pageList.appendChild(button);// 添加到pageList后面
	}

	$("#commodityCatalog").attr('class',"header-clicked secondline-left");
	var pageList = document.getElementById("pageList");
	var currPage = ${pageParams.currPage};
	var totalPages = ${pageParams.totalPages};
	
	if(totalPages >= 4){
		if(currPage < 3 ){
			for(var i=1; i<=3 ;i++ ){
				createGuidedBuyingButtonPage(i);
			}
		}else{
			createGuidedBuyingButtonPage(1);
			for(var i=currPage-1; i<=currPage+1 ;i++ ){
				createGuidedBuyingButtonPage(i);
			}
		}
	}else if(totalPages > 0){//总页数不足4页
		for(var i=1; i<=totalPages ; i++){
			createGuidedBuyingButtonPage(i);
		}
	}
	if(currPage == 1 || currPage == 0) $("#forward").hide();//善后处理
	if(currPage  == totalPages) {
		$("#afterward").hide();
		$("#page"+(currPage+1)).hide();
	}
	$("#page"+currPage).attr("class","btn-page-choose");
	function add(uniqueName){
		var quantity = $("#quantity_"+uniqueName).val();
		addShoppingCart(uniqueName,quantity);
	}
	</script>
</html>
