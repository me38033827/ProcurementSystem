<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑目录-详细信息</title>
<%@include file="../../other/supplierHeader1.jsp"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
	<div class="container">
		<div id="order-detail-main">
			<div class="standard-title">
				<a class="standard-title-main">编辑目录</a>
				<div class="standard-title-r">
					<button class="btn-w"
						onclick="window.location.href='commodityCatalogEditDetail.jsp'">上一步</button>
					<button class="btn-w">创建新版本</button>
					<button class="btn-b"
						onclick="window.location.href='commodityCatalogEditPurchase'">上载目录文件</button>
					<button class="btn-w">下载目录文件</button>
					<button class="btn-w">更新标头数据</button>
					<button class="btn-w" onclick="window.location.href='main.jsp'">退出</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<div id="order-detail-main">
					<div class="commodity-catalog-edit-left left blue">
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"
							onclick="window.location.href='commodityCatalogEditDetail.jsp'">1
							详细信息</button>
						<button id="commodity-catalog-edit-left-clicked"
							onclick="window.location.href='commodityCatalogEditContent.jsp'">2
							内容</button>
						<button id="commodity-catalog-edit-left-not-clicked"
							onclick="window.location.href='commodityCatalogEditPurchase.jsp'">3
							订购</button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
					</div>
				</div>
			</div>


			<div class="col-md-10">
				<div class="container-padding">
					<div>查看并编辑目录内容。在目录中添加或删除项目。要替换现有目录，请单击“上载目录文件”。已发布的目录不可编辑。</div>
					<div>若要编辑一个已发布的目录，请创建该目录的新版本。</div>
					<div class="standard-title-main">内容目录</div>
					<div class="table-container">
						<table class="table table-hover">
							<tr class="standard-row1">
								<th width="10%">项目编号</th>
								<th width="15%">供应商标识符</th>
								<th width="15%">供应商部件标识符</th>
								<th width="15%">制造商部件标识符</th>
								<th width="15%">项目说明</th>
								<th width="15%">SPSC代码</th>
								<th width="15%">单价</th>
							</tr>
						</table>
						<div id="sourcing-tab" style="border-bottom: 2px solid #ddd">
							<table class="table table-hover">
							<c:forEach var="commodity" items="${commodityCatalog.commodities }" varStatus="status">
								<tr>
									<td width="10%">${status.count }</td>
									<td width="15%">S${commodity.supplier.uniqueName}</td>
									<td width="15%">${commodity.supplierPartId }</td>
									<td width="15%">${commodity.manufacturerPartId }</td>
									<td width="15%">${commodity.itemDescription }</td>
									<td width="15%">${commodity.spscCode }</td>
									<td width="15%">${commodity.unitPrice }</td>
								</tr>
								</c:forEach>
							</table>
						</div>

					</div>
				</div>
			</div>
		</div>
		<div id="order-detail-main">
			<div class="commodity-ending">
				<div class="standard-title-r">
					<button class="btn-w"
						onclick="window.location.href='commodityCatalogEditDetail.jsp'">上一步</button>
					<button class="btn-w">创建新版本</button>
					<button class="btn-b"
						onclick="window.location.href='commodityCatalogEditPurchase.jsp'">上载目录文件</button>
					<button class="btn-w">下载目录文件</button>
					<button class="btn-w">更新标头数据</button>
					<button class="btn-w" onclick="window.location.href='main.jsp'">退出</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>