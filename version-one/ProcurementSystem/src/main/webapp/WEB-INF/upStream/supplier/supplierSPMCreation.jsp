<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="/ProcurementSystem/js/my-bootstrap-treeview.js"></script>
<script src="/ProcurementSystem/js/selectCommodity.js"></script>
<title>创建供应商界面</title>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
					<!-- 主要内容 -->
					<div class="standard-title">
						<div class="standard-title-main">创建供应商绩效管理项目</div> 
						<div class="standard-title-r">
							<button form="supplierSPMCreation" formaction="spmCreation?action=submit" class="btn-b">确定</button>
							<button class="btn-w" onclick="window.location.href='../main'">取消</button>
						</div>
					</div>
					<div class="title-description">
						要创建一个供应商资格管理项目，请指定下述字段。用于构建您的供应商资格管理项目的模板将显示在该页底部，可用模板可能会因您输入的项目属性而异。
					</div>
					<div class="adjust-10"></div>
					
					<form id="supplierSPMCreation" method="post">
						<div class="row">
							<div class="col-md-5">
								<table class="fulltab" style="margin-left:80px;">
									<tr class="row-standard">
										<td class="col-standard1">＊名称：</td>
										<td class="col-standard2"><input class="form-control input" name="title" style="width:230px;" 
										<%if(request.getAttribute("spm")!=null){ %>
										value="${spm.title}"
										<%} %>>
										</td>
									</tr>
									<tr>
										<td></td>
										<td><span class="error-message">${Error_title}</span></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1" valign="top">说明：</td>
										<td class="col-standard2">
											<textarea class="form-control" id="pr-textarea" name="description" style="border:1px solid #428bca; border-radius:0;">
												<%if(request.getAttribute("spm")!=null){ %>
												 ${spm.description}
												<%} %></textarea>
												<%-- <input class="form-control input" name="commodity" style="display:none;"
												<%if(request.getAttribute("sqm")!=null){ %>
												value="${sqm.description}"
												<%} %>> --%>
											</td>
									</tr>
									
									<tr class="row-standard">
										<td class="col-standard1">商品：</td>
										<td class="col-standard2"><input type="hidden" name="commodity"
											<%if(request.getAttribute("spm")!=null){ %>
											value="${spm.commodity}"
											<%} %>>
											<table id="commodities">
											<c:forEach items="${sqm.commodities}" var="commodity">
												<tr>
													<td>${commodity.description }</td>
													<td>${commodity.id }</td>
												</tr>
											</c:forEach>
										</table>
										<input type="hidden" id="commoditiesId" name="commoditiesId" value="${commoditiesId}"/>
										<input type="hidden" id="commoditiesName" name="commoditiesName" value="<%=request.getAttribute("commoditiesName")%>"/>
										<input type="hidden" id="nodeIds" name="nodeIds" value=<%=request.getAttribute("commoditiesNodeId")%> />
											［&nbsp;<input type="button" style="width:50px; border:none;" onclick="onSelectCommodity();" value="选择" />&nbsp;］
										</td>
									</tr>
								</table>
							</div>
							<div class="col-md-5">
								<table class="fulltab">
									<tr class="row-standard">
										<td class="col-standard1">＊供应商：</td>
										<td class="col-standard2">
											<div>
												${spm.supplier.name}
												<input type="hidden" value="${supplier.uniqueName }"> 
												<input type="hidden" value="${supplier.name }" >
												<button style="border:0; background-color:transparent"formaction="spmCreationChooseSupplier?action=initial">【 选择 】</button> 
												<span class="error-message">${Error_supplier}</span>
											</div>
										</td>
									</tr>
									
								</table>
							</div>
						</div>
				</form>
				<div class="standard-title-main">选择模版</div> 
				<div class="title-description">
					请选择您要使用的模板，并回答与之相关的所有问题，以便创建您的项目。以上区段的字段设置值将对可用模板产生影响。
				</div>
				<div class="radio">
					<c:forEach items="${templates}" var="template">
						<label class="model"><input type="radio" name="spm_model" id="spm_model1" value="${template.id}">${template.name}</label><br/>
					</c:forEach>
					<!-- <label class="model"><input type="radio" name="spm_model" id="spm_model1" value="spm_standard">供应商绩效管理标准模版</label><br/>
					<label class="model"><input type="radio" name="spm_model" id="spm_model2" value="spm_demo" checked>供应商绩效管理Demo</label> -->
				</div>
				<div class="standard-ending">
				    <div align="right" class="standard-ending-r">
				     	<button form="supplierSPMCreation" formaction="spmCreation?action=submit" class="btn-b">确定</button>
						<button class="btn-w" onclick="window.location.href='../main'">取消</button>
					</div>  
				</div>
				<!-- 选择商品 -->
				<%@include file="../../other/selectCommodity.jsp"%>
			</div>
		</div>
	</div>
	<div class="theme-popover-mask"></div>
</body>
</html>
