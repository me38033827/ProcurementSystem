<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../../other/header1.jsp"%>
<%@ include file="../../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
</head>
<body>
	<!-- 第一行 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding">
					<div class="page-main-title">
						目录 - 所有版本 - ${name}
						<button class="btn-w right" type="button"
							onclick="window.location.href='commodityCatalogList'">目录主页</button>
					</div>
					<div class="margin-bottom">
						请复查此订阅的所有版本列表。要查看版本的内容，请单击版本号，或单击状态来查看状态变化的历史。<br>
						<div class="margin-bottom right">
							<button class="btn-b" type="button"
								onclick="window.location.href='commodityCatalogCreate'">导入新目录</button>
							<button class="btn-g" style="width:">目录同步</button>
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>
		<!--第二行  -->
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding">
					<table class="table table-hover">
						<tr class="standard-row1">
							<th width="10%">版本</th>
							<th width="15%">加载模式</th>
							<th width="50%">上次修改时间</th>
							<th width="">状态</th>
						</tr>
					</table>
					<form id="commodityCatalogForm" method="post">
						<div id="sourcing-tab" style="border-bottom: 2px solid #ddd">
							<table class="table table-hover">
								<c:forEach items="${ requestScope.commodityCatalogs}"
									var="commodityCatalog">
									<tr>
										<td width="10%"><a
											href="showCommodityCatalogContent?uniqueName=${commodityCatalog.uniqueName }">${commodityCatalog.version }
												<c:if test="${commodityCatalog.isActivated =='验证错误' }">
													<span class="error-message"><strong>!!!</strong></span>
												</c:if>
										</a></td>
										<td width="15%">完整</td>
										<td width="50%"><fmt:formatDate
												value="${commodityCatalog.lastModifyDate}"
												pattern="yyyy-MM-dd HH:mm:ss" /></td>
										<td width="">${commodityCatalog.isActivated }<input
											type="hidden" value="${commodityCatalog.isActivated }"></td>
										<!--  -->
									</tr>
								</c:forEach>
							</table>
						</div>
					</form>
					<br>
					<button class="btn-w right" type="button"
						onclick="window.onlocation.href='commodityCatalogList'">目录主页</button>
				</div>

			</div>
		</div>
	</div>
</body>
<script>
	
</script>
</html>