<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ProcurementSystem.common.*"%>
<%@ page import="com.ProcurementSystem.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="../../other/header1.jsp"%>
<%@include file="../../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
</head>
<body>
	<% PageParams<CommodityCatalog> pageParams = (PageParams<CommodityCatalog>) request.getAttribute("pageParams");
	%>
	<!-- 第一行 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding">
					<div class="border-bottom-grey margin-bottom">
						<div class="right">
							<button class="btn-w"
								onclick="window.location.href='commodityCatalogList'">目录
								主页</button>
						</div>
						<div class="small-window-title margin-bottom ">目录 - 查看内容 -
							${commodityCatalog.name },${requestScope.commodityCatalog.version},
							完整</div>

					</div>
					<div class="margin-bottom">
						<span class="caution-div container-text border-blue"> <a
							href="#">步骤1.清理数据</a>
						</span>&nbsp;&nbsp; > &nbsp;&nbsp;<span> <a
							href="commodityCatalogCompare?uniqueName=${commodityCatalog.uniqueName }">步骤2.分析数据</a>
						</span>&nbsp;&nbsp; >&nbsp;&nbsp; <span> <a
							href="commodityCatalogActivate?uniqueName=${commodityCatalog.uniqueName }">步骤3.生效</a>
						</span>
					</div>

					<div class="margin-bottom">
						<div>
							<strong>工具：</strong> <a><img
								src="/ProcurementSystem/images/icon-correct.png"
								class="img-icon" title="纠错工具" /></a> <a><img
								src="/ProcurementSystem/images/icon-edit.png"
								class="img-icon icon-choose" title="内容编辑工具" /></a> <a><img
								src="/ProcurementSystem/images/icon-download.png"
								class="img-icon" title="导入" /></a> <a><img
								src="/ProcurementSystem/images/icon-upload.png" class="img-icon"
								title="导出" /></a> <a><img
								src="/ProcurementSystem/images/icon-sync.png" class="img-icon"
								title="同步" /></a>

						</div>
					</div>
					<div class="margin-bottom">
						<div>请复查目录行项目，根据需要更改哪些字段将显示在屏幕上。根据订阅状态的不同，您可能可以编辑、删除项目或者添加新的项目。</div>
					</div>

					<div class="margin-bottom">
						<div class="left">该版本中的项目数量: ${commodityCatalog.itemCount }。&nbsp;&nbsp;</div>
						<div>
							<button class="btn-w" style="width: 120px;">隐藏/显示字段</button>
							<button class="btn-w">刷新图像</button>
							<a href="">在搜索用户界面中预览项目</a>
						</div>
					</div>
					<form id="commodityForm" method="post">
					<table border="1" class="fulltab text-center no">
						<tr>
							<th width="10%" class="text-center">
								<input type="checkbox" 
								id="commo-t0"  class="chk" />
								<label for="${commodityCatalog.uniqueName}"></label>
								<input type="hidden" name="cataloguniqueNames" value="${commodityCatalog.uniqueName}" id="${commodityCatalog.uniqueName}"/>
							</th>
							<th width="5%" class="text-center">行</th>
							<th width="10%" class="text-center">金额</th>
							<th width="20%" class="text-center">供应商名称</th>
							<th width="20%" class="text-center">供应商部件识别符</th>
							<th width="15%" class="text-center">商品名称</th>
							<th width="20%" class="text-center">描述</th>
						</tr>
							<c:forEach var="commodity"
								items="${requestScope.commodityCatalog.commodities }"
								varStatus="status">
								<tr>
									<td><input type="checkbox" id="${commodity.uniqueName }" name="commodityuniqueNames" 
									value="${commodity.uniqueName }" class="chk" /><label for="${commodity.uniqueName }"></label>&nbsp;
										<c:if test="${commodityCatalog.isActivated != '已激活' }">
											<!--已激活状态不可编辑  -->
											<a
												href="commodityCatalogContentEdit?uniqueName=${commodity.uniqueName }">编辑
												<c:if test="${commodity.isChecked == 'FALSE'}">
													<span class="error-message">!!!</span>
												</c:if>
											</a>
										</c:if> <c:if test="${commodityCatalog.isActivated == '已激活' }">
										不可编辑
										</c:if></td>
									<td>${status.count}</td>
									<td>${commodity.unitPrice }</td>
									<td>${commodity.supplier.name }</td>
									<td>${commodity.supplierPartId }</td>
									<td>${commodity.shortName }</td>
									<td>
									<span>
	
														<c:if test="${fn:length(commodity.itemDescription) >= 30 }">  
	                         							  ${fn:substring(commodity.itemDescription,0,30)}...  
	                 								 </c:if> <c:if
															test="${fn:length(commodity.itemDescription) < 30 }">  
	                         							 ${commodity.itemDescription }
	                 								 </c:if>
												</span>
									</td>
								</tr>
							</c:forEach>
						</table>
					</form>
					<div class="margin-bottom border-bottom-grey">

						<div class="table-bottom-btn" style="background-color: white;">
							<a class="arrow-turn">↳</a>
							<button class="btn-w" formaction="deleteCommodity" form="commodityForm">删除</button>
							<button class="btn-w">添加新目录</button>
							<br> <br>
						</div>
					</div>
					<div class="right">
						<button class="btn-w"
							onclick="window.location.href='commodityCatalogList'">目录</button>
						<br> <br>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>