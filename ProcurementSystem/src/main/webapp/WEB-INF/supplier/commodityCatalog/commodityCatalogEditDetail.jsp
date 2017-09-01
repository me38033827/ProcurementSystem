<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑目录-详细信息</title>
<%@include file="../../other/supplierHeader1.jsp"%>

</head>
<body>
	<div class="container">
		<div id="order-detail-main">
			<div class="standard-title">
				<a class="standard-title-main">编辑目录</a>
				<div class="standard-title-r">
					<button class="btn-b" type="submit" form="content">下一步</button>
					<button class="btn-w" onclick="window.location.href='main.jsp'">退出</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<div id="order-detail-main">
					<div class="commodity-catalog-edit-left left blue">
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-clicked"
							onclick="window.location.href='commodityCatalogEditDetail.jsp'">1
							详细信息</button>
						<button id="commodity-catalog-edit-left-not-clicked"
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
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
					</div>
				</div>
			</div>


			<div class="col-md-10">
				<div class="container-padding ">
					<div>输入目录名称和说明文字。客户可以使用这些信息搜索目录。在目录中添加商品代码。</div>
					<div>
						<form action="commodityCatalogEditContent" method="post"
							id="content">
							<table>
								<tr>
									<td class="table-col1-right">目录名称：</td>
									<td>${commodityCatalog.name }</td>
								</tr>
								<tr>
									<td class="table-col1-right">文件名：</td>
									<td>${commodityCatalog.fileName }</td>
								</tr>
								<tr>
									<td class="table-col1-right">创建人：</td>
									<td>${commodityCatalog.creator }</td>
								</tr>
								<tr>
									<td class="table-col1-right">创建日期：</td>
									<td>${commodityCatalog.createDate }</td>
								</tr>
								<tr>
									<td class="table-col1-right">版本：</td>
									<td>${commodityCatalog.version }</td>
								</tr>
								<tr>
									<td class="table-col1-right">大小：</td>
									<td>${commodityCatalog.fileSize }</td>
								</tr>
								<tr>
									<td class="table-col1-right">循环计数：</td>
									<td>${commodityCatalog.itemCount }</td>
								</tr>
								<tr>
									<td class="table-col1-right">类型：</td>
									<td>XLS</td>
								</tr>
								<tr>
									<td class="table-col1-right">状态：</td>
									<td>${commodityCatalog.isActivated }</td>
								</tr>
								<tr>
									<td valign="top" class="table-col1-right">说明：</td>
									<td><div>
											<textArea rows="3" cols="100" name="description">${commodityCatalog.description }</textArea>
										</div>
										<div class="right">剩余字数：1000</div>
										<div>
											所允许的最大字符数为1000个（包括空格）<br> <br>
										</div></td>
								</tr>
								<tr>
									<td class="table-col1-right" valign="top">商品：</td>
									<td><table class="table-nest table table-hover">
											<tr class="standard-row1">
												<th width="100%">说明</th>

											</tr>
											<tr>
												<td width="100%" align="center">无项目</td>
											</tr>
											<tr class="standard-row3">
												<td><button class="btn-w">删除</button>
													<button class="btn-w">添加</button></td>
											</tr>
										</table></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div id="order-detail-main">
			<div class="commodity-ending">
				<div class="standard-title-r">
					<button class="btn-b"
						onclick="window.location.href='commodityCatalogEditContent.jsp'">下一步</button>
					<button class="btn-w" onclick="window.location.href='main.jsp'">退出</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>