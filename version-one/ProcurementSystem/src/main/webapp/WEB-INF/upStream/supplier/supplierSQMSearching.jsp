<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>搜索供应商和客户结果</title>
<script>
	function changeStatus(sqmId,status){
 		$.ajax({  
			data:{"sqmId" : sqmId,
				"status" : status
			},  
			type:"POST",  
			dataType: 'json',
		    url:"sqmStatus",
		    success:function(data){
		    		window.location.reload();
		      	alert("状态修改为" + data.status + "！");  
		   	},
		    error:function(data){
		    		alert("数据库修改错误！")
		    }  
		});
	}
</script>
<%@include file="../../other/header1return.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">

				<div class="standard-title">
					<a class="standard-title-main">搜索供应商资格管理项目</a>
				</div>
				
				<div class="adjust-10"></div>
				
				<div id="supplier-searching-box">
					<b>欢迎使用新的搜索页面！</b>
				</div>
				
				<div class="adjust-10"></div>
				
				<div class="searching-filter">
					<div class="filter-title">
						<a class="filter-title-main">搜索筛选器</a>
						<a class="right f-12">选项<span class="caret"></span></a>
					</div>
					<div class="row searching-content">
						<div class="col-md-6">
							<form method = "post" id="supplierSearch">
								<table>
									<tr class="row-standard">
										<td class="col-standard1" style="width:350px;padding-left:30px;"><input type="text" class="col-md-5 form-control input" style="width:300px;"
											name="content" placeholder="使用标题、标识符或任何其他词语搜索" 
											<%if(request.getSession().getAttribute("contentSession")!=null) {%>
											value="<%=request.getSession().getAttribute("contentSession") %>"
											<%} %>
											>
										</td>
										<td class="col-standard2">
											<a href=""><span class="glyphicon glyphicon-plus-sign blue" style="font-size:20px;margin-top:3px;margin-left:40px;" aria-hidden="true"></span></a>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					<div class="searching-ending">
						<div align="right">
							<button class="btn-w" onclick="window.location.href='sqmSearching?action=reset'">重置</button>
							<button class="btn-b" form="supplierSearch" formaction="sqmSearching?action=search">搜索</button>
						</div>
					</div>
				</div>
	
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				<% if(request.getAttribute("num")==null){ %>
				
				<div id="sqm-recent">
					<div class="standard-subtitle" style="border:0; margin-bottom:0;">最近查看的内容
						
						<div class="right">
							<button class="icon-btn">
								<span class="glyphicon glyphicon-th icon" aria-hidden="true"></span>
							</button>
						</div>
					</div>
					
					<div>
						<table class="table table-hover">
							<tr class="standard-row1">
								<td style="width:30%;">
									标题
								</td>
								<td style="width:10%;">所有者</td>
								<td style="width:15%;">供应商</td>
								<td style="width:10%;">资格状态</td>
								<td style="width:35%;">商品</td>
							</tr>
							<tr>
								<td><a href="">供应商资格管理项目</a></td>
								<td><a>zhangliu</a></td>
								<td><a>佳能（北京）</a></td>
								<td>进行中</td>
								<td>打印机
									<a style="margin-left:30px;"class="inline-b f-13" href="">查看更多信息</a>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<%}else{ %>
				<div id="sqm-search">
					<div>
						<table class="table table-hover">
							<tr class="standard-row1">
								<td style="width:30%;">
									标题
								</td>
								<td style="width:10%;">所有者</td>
								<td style="width:10%;">供应商</td>
								<td style="width:35%;">商品</td>
								<td style="width:15%;">资格状态</td>
							</tr>
						</table>
					</div>
					<div class="roll-tab" style="max-height: 220px;">
						<table class="table table-hover">
							<c:forEach var="supplierSQM" items="${supplierSQMs}" varStatus="status">
								<tr>
									<td style="width: 30%;"><a
										href="sqmSummary?id=${supplierSQM.id}">${supplierSQM.title}</a></td>
									<td style="width: 10%;">${supplierSQM.user.uniqueName}</td>
									<td style="width: 10%;">SU${supplierSQM.supplier.uniqueName}</td>
									<td style="width: 35%;">
									</td>
									<td style="width: 15%; padding: 3px;">${supplierSQM.status} &nbsp;&nbsp;&nbsp;&nbsp;
										<div class="btn-group" align="right">
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o">
												<c:if test="${supplierSQM.status == '待审核'}">
													<li><button class="manu-btn" onClick="changeStatus(${supplierSQM.id},'已批准');">批准</button></li>
												</c:if>
												<c:if test="${supplierSQM.status == '已批准'}">
													<li><button class="manu-btn" onClick="changeStatus(${supplierSQM.id},'已停用');">停用</button></li>
												</c:if>
												<c:if test="${supplierSQM.status == '已停用'}">
													<li><button class="manu-btn" onClick="changeStatus(${supplierSQM.id},'已批准');">取消停用</button></li>
												</c:if>
											</ul>
										</div>
									</td>
									
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<%} %>
			</div>
		</div>
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<script>
		function back(){
			location.href="../mainSupplier";
		}
	</script>
</body>
</html>
