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
</head>
<!-- 页面整体宽度：1320px -->
<body  class="a-dashbrd-page-bg">
	<%
		PageParams<Commodity> pageParams = (PageParams<Commodity>) request.getAttribute("pageParams");
	%>
	<div>
		<div id="thirdline-out" style="background-color:#ffffffa6; border:0; padding-left:20px;">
			<a href="guidedBuying">Guided Buying主页</a>
			<c:forEach var="node" items="${breadNav}" varStatus="status">
				<c:if test="${status.last == true}">
					/ <span class="active">${node.name }</span>
				</c:if>
				<c:if test="${status.last == false}">
					/ <a href="guidedCommodity?code=${node.spscCode }">${node.name }</a>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<div class="container" id="whole-container" style="padding:0 10%;">
		
		<div class="main-subjects">
			
			<div style="width:100% height:420px;">
				<c:forEach var="commodity" items="${requestScope.pageParams.data}">
					<div class="col-md-4 full-height commodity-container">	
						<div class="a-third">
						<div class="a-third-title">
							<a class="black f-14" href="/ProcurementSystem/buyer/commodityCatalog/commodityInfo?uniqueName=${commodity.uniqueName }&currPage=${pageParams.currPage }&code=${code}">${commodity.shortName }</a>
						</div>
						<img class="a-third-img" 
									href="/ProcurementSystem/buyer/commodityCatalog/commodityInfo?uniqueName=${commodity.uniqueName }&currPage=${pageParams.currPage }&code=${code}"
									alt="" id="image-${commodity.uniqueName }"
									src="http://47.95.4.158/ProcurementSystem/upload/${commodity.commodityCatalog.uniqueName}/${commodity.thumbnail }"
									onerror="error('image-${commodity.uniqueName }');"/>
						<div class="a-third-description">商品详情：<span>
							<c:if test="${fn:length(commodity.itemDescription) >= 36 }">  
	                                  ${fn:substring(commodity.itemDescription,0,36)}...  
	                          </c:if> <c:if test="${fn:length(commodity.itemDescription) < 36 }">  
	                                 ${commodity.itemDescription }
	                          </c:if>
	                         
                          </span></div>
						<div class="a-third-price">价格：￥${commodity.unitPrice}</div> 
						</div>
						<div class="adjust-10"></div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div>
		<div class="pager-container">
			<div class="pager">
				<button class="btn-page" id="forward"
					onclick="window.location.href='top50?currPage=<%=pageParams.getCurrPage() - 1%>'">上一页</button>
				<span id="pageList"></span>
				<button class="btn-page" id="afterward"
					onclick="window.location.href='top50?currPage=${pageParams.currPage+1}'">下一页</button><span>共<strong>${pageParams.totalPages}</strong>页</span>
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
	</script>
</html>
