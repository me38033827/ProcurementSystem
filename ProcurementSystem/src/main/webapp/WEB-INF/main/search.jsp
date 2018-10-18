<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../other/header1return.jsp"%>
<script src="/ProcurementSystem/js/searchCondition.js"></script>
<script src="/ProcurementSystem/js/selectCommodity.js"></script>
<script src="/ProcurementSystem/js/my-bootstrap-treeview.js"></script>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<div class="row">
					<c:if test="${pageId == 2004}">
						<div class="col-md-2">
							<div class="adjust-10"></div>
							<div class="adjust-10"></div>
							<div class="contract-crea-left left blue">

								<div class="">
									<button id="contract-crea-clicked"
										onclick="window.location.href='supplierSearchDistribute?page=2004'">供应商和客户</button>
								</div>
								<div class="">
									<button id="contract-crea-not-clicked"
										onclick="window.location.href='supplierSearchEx'"
										scrolling="no">企业信息公示</button>
								</div>

							</div>
						</div>
						<div class="col-md-10">
					</c:if>

					<c:if test="${pageId == 2005}">
						<div class="col-md-12">
							<div class="standard-title">
								<a class="standard-title-main" id=search-title><%=request.getSession().getAttribute("pageName")%></a>
							</div>
					</c:if>
					<c:if test="${pageId == 2006}">
						<div class="col-md-12">
							<div class="standard-title">
								<a class="standard-title-main" id=search-title><%=request.getSession().getAttribute("pageName")%></a>
							</div>
					</c:if>
					<input hidden="hidden" id="pageId"
						value="<%=request.getSession().getAttribute("pageId")%>">
					<div class="adjust-10"></div>

					<div class="adjust-10"></div>

					<div class="searching-filter">
						<div class="filter-title">
							<a class="filter-title-main">搜索筛选器</a> <a class="right f-12">选项<span
								class="caret"></span></a>
						</div>
						<div class="row searching-content">
							<div class="col-md-10">
								<table>
									<tr class="row-search" id="search-0">
										<td class="col-search1"><input type="text"
											class="col-md-5 form-control input" style="width: 300px;"
											name="content" id="content" placeholder="使用名称、标识符或任何其他词语搜索"
											value="${content}"
											<%if(request.getSession().getAttribute("contentSession")!=null) {%>
											value="<%=request.getSession().getAttribute("contentSession") %>"
											<%} %>></td>
										<td class="col-search2"><a
											href="javascript:addCondition('#search-0');"><span
												class="glyphicon glyphicon-plus-sign blue"
												aria-hidden="true"></span></a></td>
									</tr>
								</table>
							</div>
						</div>
						<div class="searching-ending">
							<div align="right">
								<button class="btn-w" onclick="reset()">重置</button>
								<button class="btn-b" onclick="search();">搜索</button>
							</div>
						</div>
					</div>

					<div class="adjust-10"></div>
					<div class="adjust-10"></div>

					<div class="standard-subtitle" style="border: 0; margin-bottom: 0;">
						搜索结果
						<div class="f-14 black inline-b" style="margin-left: 40%;">
							共有<a id="numOfResults"></a>个结果
						</div>
						<div class="right">
							<button class="icon-btn">
								<span class="glyphicon glyphicon-th icon" aria-hidden="true"></span>
							</button>
						</div>
					</div>
					<div id="result-title"></div>
					<div id="result-content" class="roll-tab"
						style="max-height: 220px;"></div>
					<div id="result-action"></div>
				</div>
			</div>
			<!-- <div id="result-title"></div>
			<div id="result-content" class="roll-tab" style="max-height: 220px;"></div>
			<div id="result-action"></div> -->
			<%@include file="../other/selectCommodity.jsp"%>
		</div>
	</div>

	<div class="theme-popover-mask"></div>

	<%@ include file="../other/footer.jsp"%>
	<script>
		function back() {
			location.href = "../mainSupplier";
		}

		var pageId = $("#pageId").val();
		var userId = $("#userId").val();
		var content = $("#content").val();
		//供应商和客户页面 传递搜索参数
		if (pageId == 2004) {
			var supplier_name = "${supplierSearchInfo.name}";
			var supplier_isClient = "${supplierSearchInfo.isClient}";
			var supplier_isSupplier = "${supplierSearchInfo.isSupplier}";
			var supplier_approveState = "${supplierSearchInfo.approveState}";
		} else if (pageId == 2005) {
			var supplierSPM_title = "${supplierSPMSearchInfo.title}";
			var supplierSPM_supplierId = "${supplierSPMSearchInfo.supplierId}";
			var supplierSPM_status = "${supplierSPMSearchInfo.status}";
		} else if (pageId == 2006) {
			var supplierSQM_title = "${supplierSQMSearchInfo.title}";
			var supplierSQM_supplierId = "${supplierSQMSearchInfo.supplierId}";
			var supplierSQM_status = "${supplierSQMSearchInfo.status}";
		}
		$(function() {
			//是否已经从后端获得商品
			var getCommodity = 0;
			$('.choose').click(function() {
				alert(123123213123);
				$('.theme-popover-mask').fadeIn(100);
				$('.theme-popover').slideDown(200);
				if (getCommodity == 0) {
					getUNSPSC();
					getCommodity = 1;
				}
			})
			$('#finish-btn').click(function() {
				$('.theme-popover-mask').fadeOut(100);
				$('.theme-popover').slideUp(200);
			})
		})
	</script>
</body>
</html>
