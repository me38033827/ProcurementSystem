<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1return.jsp"%>
<script src="/ProcurementSystem/js/simTree.js"></script>
<script src="/ProcurementSystem/js/simQuestionnaire.js"></script>
<title>供应商详情－概要</title>
</head>
<!-- 页面整体宽度：1320px -->
<body >
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<div><%@include file="supplierDetailNav.jsp"%></br></br></div>
				
				<!-- 主要内容 -->

<div class="col-md-8"></div>
				<div class="row">
					<div class="col-md-8" style="background-color:white">
						<div class="standard-subtitle" >
							供应商请求表单
						</div>
						<div class="standard-subtitle">Supplier Information</div>
						<table class="tab-height" id="supplier-crea-tab1"
							style="margin-left: 80px;">
							<tr>
								<td class="col-standard1">组织名称：</td>
								<td class="col-standard2">${supplier.name}</td>
							</tr>
							<tr>
								<td class="col-standard1">地址：</td>
								<td class="col-standard2">${supplier.city}</td>
							</tr>
							<tr>
								<td></td>
								<td class="col-standard2">${supplier.country}</td>
							</tr>
							<tr>
								<td ></td>
								<td class="col-standard2">${supplier.address1}</td>
							</tr>
							<tr>
								<td ></td>
								<td class="col-standard2">${supplier.address2}</td>
							</tr>
							
							<tr>
								<td class="col-standard1">联系人名：</td>
								<td class="col-standard2">${supplier.contactFirst}</td>
							</tr>
							<tr>
								<td class="col-standard1">联系人姓：</td>
								<td class="col-standard2">${supplier.contactLast}</td>
							</tr>
							
							<tr>
								<td class="col-standard1">主要电子邮件地址：</td>
								<td class="col-standard2">${supplier.mainEmail}</td>
							</tr>
							<tr>
								<td class="col-standard1">总机：</td>
								<td class="col-standard2">${supplier.switchboard}</td>
							</tr>
							</table>
							<div class="standard-subtitle">Additional Information</div>
								<table class="fulltab" style="margin-left: 80px;">
								<tr>
								<td class="col-standard1">Business Unit：</td>
								<td class="col-standard2">${supplier.BU}</td>
							</tr>
							
							<tr>
								<td class="col-standard1">商品(UNSPSC)：</td>
								<td class="col-standard2">
								 ${supplier.UNSPSCCommodity}
								</td>
							</tr>
							<tr>
								<td class="col-standard1">Signed NDA obtained：</td>
								<td class="col-standard2">${supplier.NDA}</td>
							</tr>
							<tr>
								<td class="col-standard1">简短描述：</td>
								<td class="col-standard2">${supplier.description}</td>
							</tr>	
						</table>
					</div>
					
				</div>

				
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../../other/supplierFooter.jsp"%>

	<script>
		function back() {
			window.history.back();
		}
		$(function() {
			var defaultData = ${treeData};
			$('#treeview-sim').treeview({
				data : defaultData
			});
		})
	</script>
</body>
</html>
