<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../other/header1.jsp"%>
<%@include file="../other/header2.jsp"%>
</head>

<!-- 导入新目录标题 -->
<div id="catalog-creation-title1">
	目录－导入新目录
</div>
<!-- 导入新目录具体内容 -->
<form action="commodityCatalogueUpload" method="post"
	enctype="multipart/form-data">
	<div id="catalog-creation">
		<p>请浏览到包含此目录新版本的文件。您也可以随目录文件一起导入图像文件。</p>
		<table class="catalog-table">

			<tr>
				<td class="col1">*供应商：</td>
				<td class="col2">HP</td>
			<tr>
				<td class="col1">*目录订阅名称：</td>
				<td class="col2" name="name">${commodityCatalogue.name }test</td>
			</tr>

			<tr>
				<td class="col1">跳过审批：</td>
				<td class="col2">${commodityCatalogue.isIgnoreApprove }否</td>
			</tr>

			<tr>
				<td class="col1">在送往审批前停止：</td>
				<td class="col2">${commodityCatalogue.isStopBeforeApprove }否</td>
			</tr>

			<tr>
				<td class="col1">自动激活：</td>
				<td class="col2">${commodityCatalogue.isAutoActivate }否</td>
			</tr>

			<tr>
				<td class="col1">允许多供应商CIF：</td>
				<td class="col2">${commodityCatalogue.isAllowMultiSupplierCIF }否
				</td>
			</tr>


			<tr>
				<td class="col1">层级：</td>
				<td class="col2">${commodityCatalogue.level}无</td>
			</tr>

			<!-- 目录文件上传 -->

			<tr>
				<td class="col1">目录文件：</td>
				<td class="col2"><input type="file" name="file" id="upload-file"></td>
			</tr>

			<tr>
				<td class="col1">
					<button type="button" class="btn-b" onclick="window.location.href='procurementCommodityCatalogContent.jsp'"
						>导入</button>&nbsp&nbsp
				</td>

				<td class="col2"><button type="submit" class="btn-w"
						onclick="window.location.href='procurementCatalogCreation.jsp'">取消</button></td>
			</tr>


		</table>
	</div>
</form>

</body>
</html>
