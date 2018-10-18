<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1.jsp"%>
<script src="/ProcurementSystem/js/simTree.js"></script>
<script src="/ProcurementSystem/js/simQuestionnaire.js"></script>
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
					<div class="standard-title-main">创建新的供应商</div>
					<div class="standard-title-r">
						<button class="btn-b" onclick="finish();">确定</button>
						<button class="btn-w" onclick="window.location.href='../search/supplierSearchDistribute?page=2004'">取消</button>
					</div>
				</div>

				<div class="tag-line">
					<button class="tag-clicked">概要</button>
				</div>

				<div class="adjust-10"></div>

				<div class="standard-subtitle">组织概要</div>
				<form id="supplierCreation" action="supplierAnalyze" method="post">
					<div class="row">
						<div class="col-md-5">
							<table class="fulltab" style="margin-left: 80px;">
								<tr class="row-standard">
									<td class="col-standard1">1.1</td>
									<td><span style="color: red">*</span>Supplier Name：</td>
								</tr>

								<tr class="row-standard">
									<td></td>
									<td class="col-standard2"><input
										class="form-control input" id="name" name="name" /></td>
								</tr>

								
								<tr>
									<td></td>
									<td><span id="name-error" class="error-message"></span></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">1.2</td>
									<td>Main Address</td>
								</tr>
								
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2">Country</td>
								</tr>
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2"><input
										class="form-control input" id="country" name="country" value="中国"/></td>
								</tr>
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2">Address</td>
								</tr>
								
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2"><input
										class="form-control input" id="address1" name="address1" /></td>
								</tr>
								
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2"><input
										class="form-control input" id="address2" name="address2" /></td>
								</tr>
<tr class="row-standard">
									<td></td>
									<td class="col-standard2">City</td>
									<td class="col-standard2">Zip Code</td>
									<td class="col-standard2">Province</td>
									
								</tr>
								
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2"><input
										class="form-control input" id="city" name="city" value="Beijing"/></td>
										<td class="col-standard2"><input
										class="form-control input" id="postCode" name="postCode" /></td>
										<td class="col-standard2"><input
										class="form-control input" id="province" name="province" /></td>
										
								</tr>
<tr class="row-standard">
									<td class="col-standard1">1.3</td>
									<td><span style="color:red">*</span>Contact First Name</td>
								</tr>
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2"><input
										class="form-control input" id="contactFirst" name="contactFirst" /></td>
								</tr>
							
								<tr class="row-standard">
									<td class="col-standard1">1.4</td>
									<td><span style="color:red">*</span>Contact Last Name</td>
								</tr>
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2"><input
										class="form-control input" id="contactLast" name="contactLast" /></td>
								</tr>
	<tr class="row-standard">
									<td class="col-standard1">1.5</td>
									<td><span style="color:red">*</span>Contact Email</td>
								</tr>
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2"><input
										class="form-control input" id="mainEmail" name="mainEmail" /></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">1.6</td>
									<td>Contact Phone</td>
								</tr>
								
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2"><input
										class="form-control input" id="switchboard" name="switchboard" /></td>
								</tr>
								</table>
								<div class="standard-subtitle">Additional Information</div>
								<table class="fulltab" style="margin-left: 80px;">
								
<tr class="row-standard">
									<td class="col-standard1">2.1</td>
									<td>Business Unit</td>
								</tr>
								
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2">
									<select name="BU">
									<option value="Sourcing">Sourcing</option>
									</select></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">2.2</td>
									<td>Category</td>
								</tr>
								
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2">
										<table id="commodities">
											<c:forEach items="${sqm.commodities}" var="commodity">
												<tr>
													<td>${commodity.description }</td>
													<td>${commodity.id }</td>
												</tr>
											</c:forEach>
										</table> <input type="hidden" id="commoditiesId" name="commoditiesId"
										value="${commoditiesId}" /> <input type="hidden"
										id="commoditiesName" name="commoditiesName"
										value="<%=request.getAttribute("commoditiesName")%>" /> <input
										type="hidden" id="nodeIds" name="nodeIds"
										value=<%=request.getAttribute("commoditiesNodeId")%> />
										（选择一个值）［&nbsp;<a class="blue inline-b choose"
										href="javascript:;" onclick="onSelectCommodity();">选择</a>&nbsp;］
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">2.3</td>
									<td>Signed NDA obtained</td>
								</tr>
								
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2">
										<div class="radio">
											<label><input type="radio" name="NDA"
												id="optionsRadios1" value="是">Yes</label> 
											<label><input type="radio" name="NDA" id="optionsRadios2" value="否"
												checked>No</label>
										</div>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">2.4</td>
									<td>Comments</td>
								</tr>
								
								<tr class="row-standard">
									<td></td>
									<td class="col-standard2"><textarea class="form-control"
											id="pr-textarea" name="description"
											style="border: 1px solid #428bca; border-radius: 0;"></textarea></td>
								</tr>

								
								
							</table>
						</div>
						<!--  --><div class="col-md-5">
							<table class="fulltab">
								
								
								
								
								<tr class="row-standard">
									<td class="col-standard1">标识符：</td>
									<td class="col-standard2">SU<%=request.getAttribute("uniqueName")%>
										<input type="hidden" id="uniqueName" name="uniqueName"
										value=<%=request.getAttribute("uniqueName")%>>
									</td>
								</tr>
								
								
							</table>
					</div><br/>
					</div>
					
					<div style="border:1px solid #ddd; max-height:500px; overflow-x:scroll;">
		          		<div id="treeview-sim1" class=""></div>
					</div>
					<input value="0" id="count" type="hidden" />
				</form>
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				<%@include file="../../other/selectCommodity.jsp"%>
			</div>
		</div>
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<!-- CONTENT-WRAPPER SECTION END-->
	<!-- 选择商品 -->
	<div class="theme-popover-mask"></div>
	<script>
		
		
		function finish(){
			$(".error-message").empty();
			var pass = 1;
			var name = $("#name").val();
			if(name==""){
				$("#name-error").text("组织名称不能为空");
				pass=0;
			}
			var switchboard = $("#switchboard").val();
			if(switchboard==""){
				$("#switchboard-error").text("总机不能为空");
				pass=0;
			}
			//经过合法性检测
			if(pass){
				$("form").submit();
			}
		}
	</script>
</body>
</html>
