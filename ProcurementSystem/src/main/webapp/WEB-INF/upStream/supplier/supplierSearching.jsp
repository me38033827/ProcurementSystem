<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
	function toshow() {
		alert(1);
		var num = request.getParameter("num");
		alert(num);
	}
</script>
<title>搜索供应商和客户结果</title>

<%@include file="../../other/header1return.jsp"%>
<script src="/ProcurementSystem/js/searchCondition.js"></script>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<input hidden="hidden" id="userId" value="100001"> <input
					hidden="hidden" id="pageId" value="2004">

				<div class="adjust-10"></div>
				<div class="row">
					<div class="col-md-2">
						<div class="standard-title">
							<a class="standard-title-main">搜索供应商和客户</a>
						</div>
						<div class="standard-title">
							<a class="standard-title-main" href="supplierSearchEx">企业信息公示系统</a>
						</div>
					</div>
					<div class="col-md-10">
						<div id="supplier-searching-box">
							<b>短短两天内即可找到新供应商！</b> <a href="">寻找新供应商</a>或<a href="">了解更多</a>
						</div>

						<div class="adjust-10"></div>

						<div class="searching-filter">
							<div class="filter-title">
								<a class="filter-title-main">搜索筛选器</a> <a class="right f-12">选项<span
									class="caret"></span></a>
							</div>
							<div class="row searching-content">
								<div class="col-md-6">
									<form method="post" id="supplierSearch">
										<table>
											<tr class="row-search" id="search-cond-all">
												<td class="col-search1"><input type="text"
													class="col-md-5 form-control input" style="width: 300px;"
													name="content" placeholder="使用名称、标识符或任何其他词语搜索"
													<%if (request.getSession().getAttribute("contentSession") != null) {%>
													value="<%=request.getSession().getAttribute("contentSession")%>"
													<%}%>></td>
												<td class="col-search2"><a
													href="javascript:addCondition('#search-cond-all');"><span
														class="glyphicon glyphicon-plus-sign blue"
														aria-hidden="true"></span></a></td>
											</tr>
										</table>
									</form>
								</div>
							</div>
							<div class="searching-ending">
								<div align="right">
									<form id="empty" method="post"></form>
									<button class="btn-w" form="empty"
										formaction="supplierSearch?action=reset">重置</button>
									<button class="btn-b" form="supplierSearch"
										formaction="supplierSearch?action=search">搜索</button>
								</div>
							</div>
						</div>

						<div class="adjust-10"></div>
						<div class="adjust-10"></div>

						<div class="standard-subtitle"
							style="border: 0; margin-bottom: 0;">
							搜索结果
							<%
							if (request.getAttribute("num") != "-1") {
						%>
							<a class="f-14 black" style="margin-left: 40%;">共有<%=request.getAttribute("num")%>个结果
							</a>
							<%
								}
							%>
							<div class="right">
								<button class="icon-btn">
									<span class="glyphicon glyphicon-th icon" aria-hidden="true"></span>
								</button>
							</div>
						</div>

						<div>
							<table class="table table-hover">
								<tr class="standard-row1">
									<td style="padding: 5px;"><input type="checkbox"
										id="chk-searching-s0" class="chk" /><label
										for="chk-searching-s0"></label></td>
									<td style="width: 20%;">组织名称</td>
									<td style="width: 20%;">系统标识符</td>
									<td style="width: 15%;">审批状态</td>
									<td style="width: 15%;">供应商</td>
									<td style="width: 15%;">客户</td>
									<td style="width: 10%;"></td>
								</tr>
								<%
									if (request.getAttribute("num").equals("-1") || request.getAttribute("num").equals("0")) {
								%>
								<tr>
									<td colspan="7" class="no-item f-13 grey">请在上面输入搜索条件，然后单击<b>搜索</b></td>
								</tr>
								<%
									} else {
										int i = 1;
								%>
							</table>
						</div>
						<div class="roll-tab" style="max-height: 220px;">
							<table class="table table-hover">
								<c:forEach var="supplier" items="${suppliers}"
									varStatus="status">
									<tr>
										<td style="padding: 5px;"><input type="checkbox"
											id="chk-searching-s<%=i%>" class="chk" /><label
											for="chk-searching-s<%=i%>"></label></td>
										<%
											i = i + 1;
										%>
										<td style="width: 20%;"><a
											href="supplierDetail?id=${supplier.uniqueName}">${supplier.name}</a></td>
										<td style="width: 20%;">SU${supplier.uniqueName}</td>
										<td style="width: 15%;">${supplier.approveState}</td>
										<td style="width: 15%;">${supplier.isSupplier}</td>
										<td style="width: 15%;">${supplier.isClient}</td>
										<td style="width: 10%; padding: 3px;">
											<div class="btn-group" align="right">
												<button class="btn-m" data-toggle="dropdown">
													操作&nbsp;<span class="caret"></span>
												</button>
												<ul class="dropdown-menu manu-btn-o">
													<li><a class="manu-btn" href="">停用</a></li>
												</ul>
											</div>
										</td>
									</tr>
								</c:forEach>
							</table>
						</div>

						<div>
							<table class="table table-hover">
								<%
									}
								%>
								<tr class="standard-row3">
									<td colspan="7"><a class="arrow-turn">&#8627;</a>
										<button class="btn-w">管理</button> ｜
										<div class="btn-group">
											<button class="btn-w" data-toggle="dropdown">
												新建&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o">
												<li><a class="manu-btn"
													onclick="window.location.href='supplierCreation'">供应商</a></li>
												<li><a class="manu-btn">客户</a></li>
											</ul>
										</div></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<script>
		function back() {
			location.href = "../mainSupplier";
		}
	</script>
</body>
</html>
