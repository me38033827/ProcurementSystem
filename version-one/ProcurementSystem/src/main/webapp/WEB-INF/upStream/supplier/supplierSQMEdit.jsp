<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="/ProcurementSystem/js/my-bootstrap-treeview.js"></script>
<script src="/ProcurementSystem/js/selectCommodity.js"></script>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="standard-title">
					<div class="standard-title-main">编辑供应商资格管理项目</div>
					<div class="standard-title-r">
						<button onclick="validCheck()" class="btn-b">确定</button>
						<button class="btn-w" onclick="window.location.href='sqmSummary?id=${sqm.id} '">取消</button>
					</div>
				</div>
				<div class="title-description">
					要创建一个供应商资格管理项目，请指定下述字段。用于构建您的供应商资格管理项目的模板将显示在该页底部，可用模板可能会因您输入的项目属性而异。
				</div>
				<div class="adjust-10"></div>

				<form id="supplierSQMCreation" method="post" action="sqmEdit?id=${sqm.id}&action=submit">
					<div class="row">
						<div class="col-md-5">
							<table class="fulltab" style="margin-left: 80px;">
								<tr class="row-standard">
									<td class="col-standard1">＊供应商：</td>
									<td class="col-standard2">
										<div>
											${sqm.supplier.name} 
											<input type="hidden" id="supplierUniqueName" name="supplierUniqueName"
												value="${sqm.supplier.uniqueName }"> <input
												type="hidden" value="${sqm.supplier.name }">
											<button style="border: 0; background-color: transparent"
												formaction="sqmEditCreationChooseSupplier?id=${sqm.id}&action=initial">【
												选择 】</button>
											<span class="error-message" id="supplier-error">${Error_supplier}</span>
										</div>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">＊名称：</td>
									<td class="col-standard2"><input
										class="form-control input" id="title" name="title" style="width: 230px;"
										<%if(request.getAttribute("sqm")!=null){ %>
										value="${sqm.title}" <%} %>></td>
								</tr>
								<tr>
									<td></td>
									<td><span id="title-error" class="error-message">${Error_title}</span></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1" valign="top">说明：</td>
									<td class="col-standard2"><textarea class="form-control"
											id="pr-textarea" name="description"
											style="border: 1px solid #428bca; border-radius: 0;"><%
													if (request.getAttribute("sqm") != null) {
												%>${sqm.description}<%}%></textarea>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">开始日期：</td>
									<td class="col-standard2">
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">上次资格日期：</td>
									<td class="col-standard2">
										<label for="meeting"></label><input
										name="lastValid" class="form-control input" id="meeting"
										type="date" <% if (request.getAttribute("sqm") != null) { %>
										value="${sqm.lastValid}" /> <%
										 	} else {
										 %> value="2017-12-01"/> <%
										 	}
										 %>

									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">资格失效日期：</td>
									<td class="col-standard2">
										<label for="meeting"></label><input
										name="validTo" class="form-control input" id="meeting"
										type="date" <% if (request.getAttribute("sqm") != null) { %>
										value="${sqm.validTo}" /> <%
										 	} else {
										 %> value="2018-03-31"/> <%
										 	}
										 %>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1" valign="top">商品：</td>
									<td class="col-standard2">
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
						</div>
					</div>
				</form>
				<div class="standard-ending">
					<div align="right" class="standard-ending-r">
						<button onclick="validCheck()" class="btn-b">确定</button>
						<button class="btn-w" onclick="window.location.href='sqmSummary?id=${sqm.id} '">取消</button>
					</div>
				</div>	
				<!-- 选择商品 -->
				<%@include file="../../other/selectCommodity.jsp"%>
			</div>
		</div>
	</div>
	<div class="theme-popover-mask"></div>
	<script>
		var templateId = "";
		function validCheck(){
			$(".error-message").empty();
			var pass = 1;
			//项目名称查空
			var title = $("#title").val();
			if(title==""){
				$("#title-error").text("项目名称不能为空");
				pass = 0
			}
			//供应商查空
			var supplier = $("#supplierUniqueName").val();
			if(supplier==""){
				$("#supplier-error").text("供应商不能为空");
				pass = 0
			}
			//经过合法性检测
			if(pass){
				$("form").submit();
			}
		}
		<%if(request.getAttribute("commodities")!=null){%>
			var nodes = <%=request.getAttribute("nodes")%>;
		<%}%>
	</script>
</body>
</html>
