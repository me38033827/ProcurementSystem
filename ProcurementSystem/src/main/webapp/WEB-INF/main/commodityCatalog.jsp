<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ProcurementSystem.common.*"%>
<%@ page import="com.ProcurementSystem.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>商品目录界面</title>

<%@include file="../other/header1.jsp"%>
<%@include file="../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="../css/commodityNav.css" rel="stylesheet" type="text/css" />
<script src="../js/commodityNav.js"></script>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<%
		PageParams<Commodity> pageParams = (PageParams<Commodity>) request.getAttribute("pageParams");
		//获得购物车大小
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
		String size = "0";
		String quantity = "0";//商品总数
		if (shoppingCart != null)
			size = shoppingCart.getCommodities().size() + "";
	%>
	<!-- 导航栏 第三行 -->
	<div>
		<div id="thirdline-out">
			<div class="col-md-3 inline-b left">
				<div class="btn-group">
					<button class="procure-nav" data-toggle="dropdown">
						按类别采购&nbsp;<span class="caret"></span>
					</button>
					<ul class="dropdown-menu manu-btn-o">
						<li><a class="manu-btn" href="">编辑</a></li>
						<li><a class="manu-btn" href="">停用</a></li>
					</ul>
				</div>
			</div>
			<!-- <div class="col-md-2 inline-b left">
				<select class="col-md-12" id="my-select"
					style="background-color: transparent">
					<option>按类别采购</option>
					<option>按＊＊采购</option>
					<option>按＊＊采购</option>
				</select>
			</div> -->
			<div class="col-md-2 inline-b left" id="search-service">
				<select class="col-md-12" id="my-select">
					<option>所有类别</option>
					<option>服务</option>
					<option>服务</option>
				</select>
			</div>

			<!-- 第三行搜索框 -->
			<input type="text" class="inline-b border-g left col-md-4"
				value="按部件号、供应商名称或关键字搜索"
				onfocus="if(this.value=='按部件号、供应商名称或关键字搜索') this.value=''"
				onblur="if(this.value=='')this.value='按部件号、供应商名称或关键字搜索' ">
			<button class="btn btn-default inline-b border-g left"
				id="search-btn">
				<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
			</button>


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
				<!-- <a class="filter-title" id="filter-first">过滤条件</a> <input
					type="text" class="inline-b border-g left col-md-8" value="在结果中搜索"
					style="font-size: 12px;"
					onfocus="if(this.value=='在结果中搜索') this.value=''"
					onblur="if(this.value=='')this.value='在结果中搜索' ">
				<button class="btn btn-default inline-b border-g left"
					id="search-btn">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				</button>
				<div class="adjust"></div>
				<a class="filter-title">合同</a> <a class="filter-content">搜索合同</a> <a
					class="filter-title">关键字</a> <a class="filter-content">affairs(1)</a>
				<a class="filter-content">civic(1)</a> <a class="filter-content">description(1)</a>
				<a class="filter-content">enter(1)</a> <a class="filter-content">查看更多</a>
				<a class="filter-title">类别</a> <a class="filter-content">其他政治、公民事物服务(1)</a>
				<a class="filter-content">其他制造业相关业务(3)</a> <a class="filter-title">供应商</a>
				<a class="filter-content">发发发发展有限公司(1)</a> <a class="filter-content">有限责任公司(3)</a> -->




				<div class="sidebar">
					<!-- <div class="sidebar_top sidebar_top_tc">按照类别采购</div> -->
					<div class="sidebar_con">
						<dl class="sidebar_item">
							<c:forEach var="node" items="${firstClass}">
								<dd>
									<h3 class="">
										<a href="commodityCatalog?code=${node.spscCode }">${node.name }</a>
									</h3>
									<s></s>
									<!-- 弹出层 -->
									<div class="sidebar_popup dis1" style="display: none;">
										<div class="sidebar_popup_class clearfix">
											<div class="sidebar_popup_item">
												<strong>${node.name }</strong>
												<c:forEach var="childNode" items="${node.childList}">
													<p>
														<span class="linesbg"><a
															href="commodityCatalog?code=${childNode.spscCode}">${childNode.name }</a></span>
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

			<!-- 搜索结果显示区域 -->
			<div class="results-out col-md-9">
				<a class="result-line1 inline-b">目录主页&nbsp;／&nbsp;采购组织：CN05&nbsp;／&nbsp;服务&nbsp;／&nbsp;其他服务</a>
				<div class="result-line2">
					<div class="result-line2-left">
						<a class="result-line2-font">找到${commoditiesQuantity}个项目。</a>
					</div>
					<div class="result-line2-middle">
						<a class="result-line2-font">查看方式：</a> <span
							class="glyphicon glyphicon-list" aria-hidden="true"
							id="glyphicon-list"></span>
					</div>
					<div class="result-line2-right">
						<a class="result-line2-font">排序方式：相关性</a>
					</div>
				</div>
				<div class="result-line3">
					<button type="submit" class="btn-w">添加到购物车</button>
					<button type="submit" class="btn-w">比较项目</button>
				</div>

				<!-- 所有搜索结果 -->
				<div class="result-items">
					<c:forEach var="commodity" items="${requestScope.pageParams.data}">
						<!-- 每条搜索结果 -->
						<div class="result-item">
							<div class="left">
								<input type="checkbox" id="${commodity.uniqueName }" class="chk"
									name="commodityUniqueNames" value="${commodity.uniqueName }" /><label
									for="${commodity.uniqueName }"></label>
							</div>

							<div class="left container-thumbnail">
								<img alt="" id="image-${commodity.uniqueName }"
									src="${commodity.thumbnail }"
									onerror="error('image-${commodity.uniqueName }');"
									width="130px" height="130px">
							</div>
							<div class="item-whole">
								<div>
									<a
										href="/ProcurementSystem/buyer/commodityCatalog/commodityInfo?uniqueName=${commodity.uniqueName }&currPage=${pageParams.currPage }">${commodity.shortName }</a>
								</div>
								<table class="">
									<tr>
										<td class="item-content-grey">供应商：</td>
										<td class="item-content-blue">${commodity.supplier.name}</td>

									</tr>
									<tr>
										<td class="item-content-grey">供应商部件号：</td>
										<td class="item-content-black">${commodity.supplierPartId}</td>

									</tr>
									<tr>
										<td class="item-content-grey">剩余时间：</td>
										<td class="item-content-black"></td>

									</tr>
									<tr>
										<td class="item-content-grey">合同：</td>
										<td class="item-content-blue">${commodity.contract.name }</td>
									</tr>
									<tr>
										<td><span class="item-content-grey">描述：</span><span>${commodity.itemDescription }</span></td>
										<td class="item-content-black"></td>
									</tr>

								</table>

								<input type="hidden" id="uniqueName_${commodity.uniqueName }"
									value="${commodity.uniqueName }" />
							</div>

							<div class="item-price">
								<a class="item-price-green">${commodity.unitPrice} CNY</a> <a
									class="item-price-grey">&nbsp;／件</a><br> <a
									class="item-price-black">数量： <input class="item-quantity"
									id="quantity_${commodity.uniqueName }" value="1" />
									<button class="item-add"
										onclick="add(${commodity.uniqueName});">添加到购物车</button></a> <a
									class="item-price-blue">添加到收藏夹</a>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="right">
					<button class="btn-page" id="forward"
						onclick="window.location.href='commodityCatalog?currPage=<%=pageParams.getCurrPage() - 1%>'">上一页</button>
					<span id="pageList"></span>
					<button class="btn-page" id="afterward"
						onclick="window.location.href='commodityCatalog?currPage=${pageParams.currPage+1}'">下一页</button>
				</div>
			</div>

			<!-- pager -->

		</div>
	</div>

	<script type="text/javascript">
	$("#commodityCatalog").attr('class',"header-clicked secondline-left");
var pageList = document.getElementById("pageList");
var currPage = ${pageParams.currPage};
var totalPages = ${pageParams.totalPages};
if(totalPages >= 4){
	if(currPage < 3 ){
		for(var i=1; i<=3 ;i++ ){
			createButtonPage(i);
		}
	}else{
		createButtonPage(1);
		for(var i=currPage-1; i<=currPage+1 ;i++ ){
			createButtonPage(i);
		}
	}
}else{//总页数不足4页
	for(var i=1; i<=totalPages ; i++){
		createButtonPage(i);
	}
}
if(currPage == 1) $("#forward").hide();//善后处理
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
</body>
</html>
