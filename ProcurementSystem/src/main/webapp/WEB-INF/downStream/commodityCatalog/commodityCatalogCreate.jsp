<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.ProcurementSystem.entity.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>导入新目录界面</title>
<%@ include file="../../other/header1.jsp"%>
<%@ include file="../../other/header2.jsp"%>
</head>
<body>
	<%
		List<CommodityCatalog> commodityCatalogs = (List<CommodityCatalog>) request
				.getAttribute("commodityCatalogs");
		int size = -1;//-1表示未选择供应商
		if (commodityCatalogs != null) {
			size = commodityCatalogs.size();
		}
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="standard-title">
					<div class="standard-title-main">目录－导入新目录</div>
					<div class="standard-title-r">
						<button class="btn-w" onclick="window.location.href='../main'">取消</button><br>
					</div>

					<!-- 导入新目录具体内容 -->
					<div id="catalog-creation">
						<p>请输入必须的信息，然后选择相应的设置，以导入新目录或者创建新的空目录</p>
						<form action="commodityCatalogUpload" method="post">
							<table class="catalog-table">
								<tr>
									<td class="col1">选择：</td>
									<td class="col2"><select id="createMode" name="createMode"
										onchange="changePage();">
											<option value="1">创建新的目录订阅</option>
											<option value="2">使用现有的目录订阅</option>
									</select></td>
								</tr>

								<tr>
									<td class="col1">*供应商：</td>
									<td class="col2">
										<div>
											${supplier.name } <input type="hidden"
												value="${supplier.uniqueName }" name="supplier.uniqueName">
											<input type="hidden" value="${supplier.name }"
												name="supplier.name"> <a href="javascript:void(0)"
												onclick="toChooseSupplierPage();">【 选择 】</a> <span
												class="error-message">${ERR_supplier}</span>
										</div>
									</td>

								</tr>

								<tr>
									<td class="col1">*目录订阅名称：</td>
									<td class="col2"><input id="creation-title"
										class="createMode1" name="name" /> <select
										class="createMode2" name="name">
											<%
												if (size == -1) {
											%>
											<option value="">请首先选择供应商</option>
											<%
												} else if (size == 0) {
											%>
											<option value="">无项目</option>
											<%
												} else {
											%>
											<c:forEach var="commodityCatalog"
												items="${ commodityCatalogs }">
												<option value="${commodityCatalog.name }">${commodityCatalog.name }</option>
											</c:forEach>
											<%
												}
											%>
									</select> <span class="error-message">${ERR_name}${Error_dupeName}</span></td>
								</tr>

								<tr class="createMode1">
									<td class="col1">创建空目录：</td>
									<td class="col2">
										<div class="radio">
											<label><input type="radio"
												name="isCreateEmptyCatalogue" id="optionsRadios1" value="是">是</label>
											<label><input type="radio"
												name="isCreateEmptyCatalogue" id="optionsRadios2" value="否"
												checked>否</label>
										</div>
									</td>
								</tr>

								<tr>
									<td class="col1">跳过审批：</td>
									<td class="col2">
										<div class="radio">
											<label><input type="radio" name="isIgnoreApprove"
												id="optionsRadios1" value="是">是</label> <label><input
												type="radio" name="isIgnoreApprove" id="optionsRadios2"
												value="否" checked>否</label>
										</div>
									</td>
								</tr>

								<tr>
									<td class="col1">在送往审批前停止：</td>
									<td class="col2">
										<div class="radio">
											<label><input type="radio" name="isStopBeforeApprove"
												id="optionsRadios1" value="是">是</label> <label><input
												type="radio" name="isStopBeforeApprove" id="optionsRadios2"
												value="否" checked>否</label>
										</div>
									</td>
								</tr>

								<tr>
									<td class="col1">自动激活：</td>
									<td class="col2">
										<div class="radio">
											<label><input type="radio" name="isAutoActivate"
												id="optionsRadios1" value="是">是</label> <label><input
												type="radio" name="isAutoActivate" id="optionsRadios2"
												value="否" checked>否</label>
										</div>
									</td>
								</tr>

								<tr>
									<td class="col1">允许多供应商CIF：</td>
									<td class="col2">
										<div class="radio">
											<label><input type="radio"
												name="isAllowMultiSupplierCIF" id="optionsRadios1" value="是">是</label>
											<label><input type="radio"
												name="isAllowMultiSupplierCIF" id="optionsRadios2" value="否"
												checked>否</label>
										</div>
									</td>
								</tr>
								<tr>
									<td class="col1">层级：</td>
									<td class="col2">
										<div class="radio">
											<label><input type="radio" name="level"
												id="optionsRadios1" value="白金">白金</label> <label><input
												type="radio" name="level" id="optionsRadios2" value="黄金">黄金</label>
											<label><input type="radio" name="level"
												id="optionsRadios3" value="白银">白银</label> <label><input
												type="radio" name="level" id="optionsRadios4" value="无"
												checked>无</label>
										</div>
									</td>
								</tr>
								<tr>
									<td class="col1">目录文件：</td>
									<td class="col2"><button type="submit"
											class="btn btn-default" id="catalog-creation-select">选择文件</button></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>

		<script>
	
	pageType(${createMode});//初始化页面类型
	/**更改页面类型*/
	function changePage(){
		var createMode = $("#createMode").find("option:selected").val();
		pageType(createMode);
	}
	/**页面类型选择*/
	function pageType(createMode) {
		if (createMode == 1) {
		 	$("#createMode").val(1);
			$(".createMode1").show();
			$(".createMode2").hide();//隐藏
			$(".createMode2").attr('name',"")//取消表单上传
			//var temp = "<input id='creation-title' name='name' /><span class='error-message'>${ERR_name}</span> ";
			//$("#name").html(temp)
		} else if (createMode == 2) {
			$("#createMode").val(2);
			$(".createMode1").hide();//隐藏
			$(".createMode1").attr('name',"")//取消表单上传
			$(".createMode2").show();
			//$("#name").html("<em>请首先选择供应商。</em>");
		}
	}
	/**转向选择供应商页面，并保存创建类型信息*/
	function toChooseSupplierPage(){
		var createMode = $("#createMode").find("option:selected").val();
		window.location.href="commodityCatalogCreateChooseSupplier?action=initial&createMode="+createMode;
	}
	
</script>
</body>
</html>
