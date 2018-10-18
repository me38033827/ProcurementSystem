<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../../../other/header1.jsp"%>
<%@ include file="../../../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
</head>
<body>
	<!-- 第一行 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding">
					<div class="page-main-title">目录视图</div>
					所有现有目录约束列表
				</div>
			</div>
		</div>
		<br>
		<!--第二行  -->
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding">
					<div style="font-size: 18px; padding-bottom: 10px">
						<strong>目录约束</strong>
					</div>
					<table class="table table-hover">
						<tr class="standard-row1">
							<th width="5%"></th>
							<th width="10%">供应商</th>
							<th width="15%">目录</th>
							<th width="10%">目录包</th>
							<th width="10%">商品代码</th>
							<th width="30%">筛选器类型</th>
							<th width="10%">组</th>
							<th width="10%">成本中心</th>
						</tr>
					</table>
					<form id="catalogViewForm" method="post" action="deleteCatalogViews">
						<div id="sourcing-tab" style="border-bottom: 2px solid #ddd">
							<table class="table table-hover">
								<c:forEach items="${ requestScope.catalogViews}"
									var="catalogView">
									<tr>
										<td width="5%"><input type="checkbox"
											value="${catalogView.id }" name="ids" id=${catalogView.id }
											class="chk" /><label for="${catalogView.id }"></label></td>
										<td width="10%">${catalogView.supplier.name}</td>
										<td width="15%">${catalogView.catalog }</td>
										<td width="10%">${catalogView.kit }</td>
										<td width="10%">${catalogView.code }</td>
										<td width="30%">${catalogView.type }</td>
										<td width="10%">${catalogView.group }</td>
										<td width="10%">${catalogView.costCenter}</td>
									</tr>
								</c:forEach>
							</table>
						</div>

						<div class="table-bottom-btn">
							<button class="btn-w" type="submit">删除约束</button>
							<button class="btn-w" type="button"
								onclick="window.location.href='createCatalogView'">添加约束</button>

						</div>
					</form>
					<br>
					<br>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	
</script>
</html>