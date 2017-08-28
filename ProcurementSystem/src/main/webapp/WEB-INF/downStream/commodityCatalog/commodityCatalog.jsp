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
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<%
		PageParams<Commodity> pageParams = (PageParams<Commodity>) request.getAttribute("pageParams");
		//获得购物车大小
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
		String size = "0";
		if (shoppingCart != null)
			size = shoppingCart.getCommodities().size() + "";
	%>
	<div class="container" id="whole-container">
		<!-- 导航栏 第三行 -->
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
				<button class="shopping-cart-btn"
					onclick="window.location.href='commodityCatalogShoppingCart'">
					<span class="glyphicon glyphicon-shopping-cart shopping-cart-icon"
						aria-hidden="true"></span>

					<div class="shopping-cart-size right" id="shoppingCartSize"><%=size%></div>
				</button>
				<button class="btn-w " style="margin-right: 20px;"
					onclick="window.location.href='procurementCatalog.jsp'">目录管理</button>


			</div>

			<!-- 第三行右侧标记 -->
		</div>

		<!-- 主要内容 -->
		<div class="main-subjects">
			<!-- 右侧过滤栏 -->
			<div id="filter">
				<a class="filter-title" id="filter-first">过滤条件</a> <input
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
				<a class="filter-content">发发发发展有限公司(1)</a> <a class="filter-content">有限责任公司(3)</a>
			</div>

			<!-- 搜索结果显示区域 -->
			<div class="results-out col-md-8">
				<a class="result-line1 inline-b">目录主页&nbsp;／&nbsp;采购组织：CN05&nbsp;／&nbsp;服务&nbsp;／&nbsp;其他服务</a>
				<div class="result-line2">
					<div class="result-line2-left">
						<a class="result-line2-font">找到3个项目。</a>
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
								<img alt=""
									src="/ProcurementSystem/images/default-thumbnail.png">
							</div>
							<div class="item-whole">
								<a class="item-content-blue" href=""></a><br> <a
									class="item-content-grey">供应商：</a> <a class="item-content-blue">${commodity.supplier.name}</a><br>
								<a class="item-content-grey">供应商部件号：</a> <a
									class="item-content-black">${commodity.supplierPartId}</a><br>
								<a class="item-content-grey">剩余时间：</a> <a
									class="item-content-black"></a><br> <a
									class="item-content-grey">合同：</a> <a class="item-content-black">${commodity.contract.name }</a><br>
								<a class="item-content-grey">描述:</a> <a
									class="item-content-black">${commodity.itemDescription }</a> <input
									type="hidden" id="uniqueName_${commodity.uniqueName }"
									value="${commodity.uniqueName }" />
							</div>

							<div class="item-price">
								<a class="item-price-green">${commodity.unitPrice} CNY</a> <a
									class="item-price-grey">&nbsp;／件</a><br> <a
									class="item-price-black">数量： <input class="item-quantity"
									id="quantity_${commodity.uniqueName }" value="1" />
									<button class="item-add"
										onclick="addShoppingCart(${commodity.uniqueName });">添加到购物车</button></a>
								<a class="item-price-blue">添加到收藏夹</a>
							</div>
						</div>
					</c:forEach>
					<div class="right">
						<button class="btn-page" id="forward"
							onclick="window.location.href='commodityCatalog?currPage=<%=pageParams.getCurrPage() - 1%>'">上一页</button>
						<span id="pageList"></span>
						<button class="btn-page" id="afterward"
							onclick="window.location.href='commodityCatalog?currPage=${pageParams.currPage+1}'">下一页</button>
					</div>
				</div>
			</div>

			<!-- pager -->

		</div>
	</div>

	<script type="text/javascript">

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

function createButtonPage(i){//i表示页号
	var button = document.createElement("button")//创建button结点
	var text = document.createTextNode(""+i);
	button.appendChild(text);
	button.id="page"+i;//设置button属性
	button.setAttribute("class","btn-page");
	button.setAttribute("onclick","window.location.href='commodityCatalog?currPage="+i+"'");
	pageList.appendChild(button);//添加到pageList后面
}
function addShoppingCart(uniqueName){
  //window.location.href="commodityCatalogAddShoppingCart?uniqueName="+$("#uniqueName_"+uniqueName).val()+ "&" + "quantity="+$("#quantity_"+uniqueName).val();
	 $.ajax({  
		data : 
			{
				"uniqueName" : $("#uniqueName_"+uniqueName).val(),
				"quantity" : $("#quantity_"+uniqueName).val()
			},  
	    type:"GET",  
	    dataType: 'json',  
	    url:"commodityCatalogAddShoppingCart",  
	    error:function(data){  
	            alert("出错了！！:"+data.size);  
	        },  
	    success:function(data){  
	      /*  alert("success:"+data);   */
	       $("#shoppingCartSize").html(data) ;  
	    }  
	        });  
}
</script>
</body>
</html>
