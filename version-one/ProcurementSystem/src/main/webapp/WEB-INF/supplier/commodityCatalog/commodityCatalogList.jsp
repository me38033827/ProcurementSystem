<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="../../other/supplierHeader1.jsp"%>
<%@include file="../../other/supplierHeader2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>供应商-目录</title>
</head>
<body>
	<!-- 第一行 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding">
					<div class="small-window-title ">目录</div>
					<div>
						使用目录数据中心针对客户管理目录。目录文件必须是CIF、cXML或Excel文件（.cif、.xml、.xls或.zip）。某些客户可能定义了特殊的目录验证规则，您可在客户关系页面上查看它们。
					</div>
					<div class="small-window-button"></div>
				</div>
			</div>
		</div>
		<!--第二行  -->
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding">
					<table class="table table-hover">
						<tr class="standard-row1">
							<th width="5%"></th>
							<th width="10%">客户名称</th>
							<th width="10%">目录名称</th>
							<th width="10%">版本</th>
							<th width="10%">可见性</th>
							<th width="10%">创建人</th>
							<th width="20%">创建日期</th>
							<th width="10%">状态</th>
							<th width="20">标为已接收日期</th>
						</tr>
					</table>
					<div id="sourcing-tab" style="border-bottom: 2px solid #ddd">
						<table class="table table-hover">
							<c:forEach items="${ requestScope.commodityCatalogs}"
								var="commodityCatalog">
								<tr>
									<td width="5%"><input type="radio"
										name="optionsRadiosinline" id="optionsRadios4" value="option2"></td>
									<td width="10%">Lenovo</td>
									<td width="10%"><a>${commodityCatalog.name }</a></td>
									<td width="10%"><a
										href="commodityCatalogEditDetail?uniqueName=${commodityCatalog.uniqueName }">${commodityCatalog.version }</a></td>
									<td width="10%">${commodityCatalog.isDisplayed }</td>
									<td width="10%">${commodityCatalog.creator }</td>
									<td width="20%">${commodityCatalog.createDate }</td>
									<td width="10%" style="color: #26C533">${commodityCatalog.isActivated }</td>
									<td width="20%">2017年9月2日</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="table-bottom-btn">
						<a class="arrow-turn">↳</a>
						<button class="btn-b" onclick="edit();">查看/编辑</button>
						<button class="btn-b">测试</button>
						<div class="dropdown" style="display: inline">
							<button class="btn-b dropdown-toggle" data-toggle="dropdown">
								删除&nbsp;<span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">仅限最新版本</a></li>
								<li><a href="#">所有版本</a></li>
							</ul>
						</div>
						<span> | </span>
						<button class="btn-b"
							onclick="window.location.href='commodityCatalogCreateDetail'">创建标准</button>
						<button class="btn-w">刷新</button>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function edit() {
		var uniqueName = $("#uniqueName").val();
		window.location.href = ''
	}
</script>
</html>