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
									<td class="col-standard1">＊组织名称：</td>
									<td class="col-standard2"><input class="form-control input" id="name" name="name" /></td>
								</tr>
								
								<tr>
									<td></td>
									<td><span id="name-error" class="error-message"></span></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1" valign="top">简短描述：</td>
									<td class="col-standard2"><textarea class="form-control"
											id="pr-textarea" name="description"
											style="border: 1px solid #428bca; border-radius: 0;"></textarea></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">供应商：</td>
									<td class="col-standard2">是</td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">客户：</td>
									<td class="col-standard2">
										<div class="radio">
											<label><input type="radio" name="isClient"
												id="optionsRadios1" value="是">是</label> <label><input
												type="radio" name="isClient" id="optionsRadios2" value="否"
												checked>否</label>
										</div>
									</td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">审批状态：</td>
									<td class="col-standard2"><select id="my-select"
										name="approveState">
											<option>已批准</option>
											<option>未批准</option>
									</select></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">其他名称1：</td>
									<td class="col-standard2"><input
										class="form-control input" name="otherName1" /></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">其他名称2：</td>
									<td class="col-standard2"><input
										class="form-control input" name="otherName2" /></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">法定全称：</td>
									<td class="col-standard2"><input name="fullNameByLaw"
										class="form-control input" /></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">股票交易代码：</td>
									<td class="col-standard2"><input name="stockCode"
										class="form-control input" /></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">供应的商品：</td>
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
										（选择一个值）［&nbsp;<a
										class="blue inline-b choose" href="javascript:;" onclick="onSelectCommodity();">选择</a>&nbsp;］
									</td>
								</tr>
								<!-- <tr class="row-standard">
									<td class="col-standard1">批准的商品：</td>
									<td class="col-standard2">（选择一个值）［&nbsp;<a
										class="blue inline-b">选择</a>&nbsp;］
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">商品(UNSPSC)：</td>
									<td class="col-standard2">（选择一个值）［&nbsp;<a
										class="blue inline-b">选择</a>&nbsp;］
									</td>
								</tr> -->
								<tr class="row-standard">
									<td class="col-standard1">公司所在州／省：</td>
									<td class="col-standard2"><input name="province"
										class="form-control input" /></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">供应商集成状态：</td>
									<td class="col-standard2"></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">供应商系统名称：</td>
									<td class="col-standard2"></td>
								</tr>
							</table>
						</div>
						<div class="col-md-5">
							<table class="fulltab">
								<tr class="row-standard">
									<td class="col-standard1">其他地址：</td>
									<td class="col-standard2" style="width: 170px;">（选择一个值）［&nbsp;<a
										class="blue inline-b">选择</a>&nbsp;］
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">＊总机：</td>
									<td class="col-standard2"><input id="switchboard" name="switchboard"
										class="form-control input" /></td>
								</tr>
								
								<tr>
									<td></td>
									<td><span id="switchboard-error" class="error-message"></span></td>
								</tr>
								
								<tr class="row-standard">
									<td class="col-standard1">主要传真：</td>
									<td class="col-standard2"><input name="mainFax"
										class="form-control input" /></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">主要电子邮件地址：</td>
									<td class="col-standard2"><input name="mainEmail"
										class="form-control input" /></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">公司URL：</td>
									<td class="col-standard2"><input name="corporateUrl"
										class="form-control input" /></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">标识符：</td>
									<td class="col-standard2">SU<%=request.getAttribute("uniqueName")%>
										<input type="hidden" id="uniqueName" name="uniqueName"
										value=<%=request.getAttribute("uniqueName")%>>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">组织类型：</td>
									<td class="col-standard2"><input name="organizationType"
										class="form-control input" /></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">父级：</td>
									<td class="col-standard2"><select id="my-select">
											<option>(无值)</option>
											<option>选项1</option>
											<option>选项2</option>
									</select></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">选择模板:</td>
								</tr>	
									<c:forEach items="${templates}" var="template">
									<tr class="row-standard">
										<td class="col-standard1"></td>
										<td class="col-standard2">
											<label class="model"><input type="radio" checked
												name="simTemplateId" id="sim_model1" value="${template.id }">&nbsp;&nbsp;${template.name}</label>
										</td>
									</tr>
									</c:forEach>
							</table>
					</div><br/>
					</div>
					<div class="standard-subtitle">概要问卷</div>
					<div>
						<table class="table table-hover">
							<tr class="standard-row1">
								<td style="width: 75%;">名称</td>
								<td style="width: 25%;">答案</td>
							</tr>
						</table>
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
		$(function(){
		     var defaultData = ${treeData};
		     $('#treeview-sim1').treeview({
		       data: defaultData
		     });
		})
		
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
