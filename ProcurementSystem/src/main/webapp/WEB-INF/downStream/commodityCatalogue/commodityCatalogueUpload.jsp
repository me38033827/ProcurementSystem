<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>导入新目录界面</title>
<%@ include file="../../other/header.jsp"%>
</head>

<!-- 导入新目录标题 -->
<div id="catalog-creation-title1">
	<a id="catalog-creation-title-font">目录－导入新目录</a>
</div>
<!-- 导入新目录具体内容 -->
<form action="commodityCatalogueUpload" method="post"
	enctype="multipart/form-data">
	<div id="catalog-creation">
		<p>请输入必须的信息，然后选择相应的设置，以导入新目录或者创建新的空目录</p>
		<table class="catalog-table">

			<tr>
				<td class="col1">*供应商：</td>
				<td class="col2">
			<tr>
				<td class="col1">*目录订阅名称：</td>
				<td class="col2" name="name">${commodityCatalogue.name }</td>
			</tr>

			<tr>
				<td class="col1">跳过审批：</td>
				<td class="col2">${commodityCatalogue.isIgnoreApprove }</td>
			</tr>

			<tr>
				<td class="col1">在送往审批前停止：</td>
				<td class="col2">${commodityCatalogue.isStopBeforeApprove }</td>
			</tr>

			<tr>
				<td class="col1">自动激活：</td>
				<td class="col2">${commodityCatalogue.isAutoActivate }</td>
			</tr>

			<tr>
				<td class="col1">允许多供应商CIF：</td>
				<td class="col2">${commodityCatalogue.isAllowMultiSupplierCIF }
				</td>
			</tr>


			<tr>
				<td class="col1">层级：</td>
				<td class="col2">${commodityCatalogue.level}</td>
			</tr>

			<!-- 目录文件上传 -->

			<tr>
				<td class="col1">目录文件：</td>
				<td class="col2"><input type="file" name="file"></td>
			</tr>

			<tr>
				<td class="col1">
					<button type="button" class="btn btn-default"
						id="catalog-creation-cancel">取消</button>&nbsp&nbsp
				</td>

				<td class="col2"><button type="submit" class="btn btn-default"
						id="catalog-creation-select">选择文件</button></td>
			</tr>


		</table>
	</div>
</form>

</body>
</html>
