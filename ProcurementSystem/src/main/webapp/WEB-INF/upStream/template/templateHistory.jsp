<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1return.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="row">
					<div class="col-md-12">
						<!-- supplier detail title -->
						<%@include file="templateNav.jsp"%>
						<br>
						<!--搜索筛选器  -->
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
									<button class="btn-w" form="empty" formaction="">重置</button>
									<button class="btn-b" form="supplierSearch" formaction="">搜索</button>
								</div>
							</div>
						</div>
						<div class="adjust-10"></div>
						<div class="standard-subtitle">
							搜索结果
							<div class="right"></div>
						</div>
						<div class="">
							<table class="table table-hover">
								<tr class="standard-row1">
									<td style="width: 30%;">时间戳</td>
									<td style="width: 20%;">用户</td>
									<td style="width: 10%;">类型</td>
									<td style="width: 20%;">标题</td>
									<td style="width: 20%;">详细信息</td>
								</tr>
							</table>
							<div id="sourcing-tab" class="border-bottom-grey">
								<table class=" table table-hover">
									<tr class="">
										<td style="width: 30%;">2017年11月24日 下午 03:27</td>
										<td style="width: 20%;"><a>Steven</a></td>
										<td style="width: 10%;">文件夹</td>
										<td style="width: 20%;">Contracts</td>
										<td style="width: 20%;"><a>已编辑</a></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<script>
		$("#history").attr("class", "tag-clicked");
	</script>
</body>
</html>
