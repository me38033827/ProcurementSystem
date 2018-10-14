<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户组管理</title>
<%@ include file="../other/header1.jsp"%>
<%@ include file="../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
	<!-- 页面整体宽度：1320px -->
	<body>
		<div class="container" id="whole-container">
			<!-- 主要内容 -->
			<div class="con">
				<div id="searching-title-out">
					<a class="inline-b black" id="searching-title">用户组管理</a>
				</div>
				<div class="user-main">
					 <div>
					 	<a class="black f-14">搜索现有用户组或创建新用户组。搜索字段不区分大小写，您可以输入全部或部分名称。</a>
					 	<div id="filters" style="height:260px;">
					 		<div id="order-filter-line1">
					 			<div class="left black" id="order-filter-line1-title">搜索筛选器</div>
					 			<div class="right blue" id="order-filter-line1-option">添加／删除搜索筛选器</div>
					 		</div>
					 		<div id="order-filter-line2">
						 		<div class="inline-b col-md-6" style="padding-left:10%;padding-top:30px;">
						 			<form method="post" id="groupSearch">
						 			<table>
						 				<tr>
						 					<td class="order-filter-left-col1">组名称：
						 					</td>
						 					<td class="order-filter-left-col2"><input class="form-control input" name="name"/>
						 					</td>
						 				</tr>
						 				<tr>
						 					<td class="order-filter-left-col1">说明：
						 					</td>
						 					<td class="order-filter-left-col2"><input class="form-control input" name="description"/>
						 					</td>
						 				</tr>
						 				<tr>
						 					<td class="order-filter-left-col1">已激活：
						 					</td>
						 					<td class="order-filter-left-col2">
						 						<div class="radio">
													<label><input type="radio" name="activiate" id="optionsRadios1" value="option1">是</label>
												  	<label><input type="radio" name="activiate" id="optionsRadios2" value="option2">否</label>
												  	<label><input type="radio" name="activiate" id="optionsRadios2" value="option2" checked>是或否</label>
												</div>
						 					</td>
						 				</tr>
						 			</table>
						 			</form>
						 		</div>
					 			<div class="searching-ending">
									<div align="right">
										<button class="btn-b" form="groupSearch"
										formaction="groupSearching">搜索</button>
										<button class="btn-w"
												onclick="window.location.href='groupSearching.html'">全部列出</button>
									</div>
								</div>
					 		</div>
					 	</div>
					 		
				 		<div class="adjust1"></div>
				 		<div class="adjust1"></div>
						
						<div id="order-result-out">
							<div>
								<table class="fulltab">
									<tr class="searching-tab-row1">
										<td class="user-search-col8">组名称</td>
										<td class="user-search-col8">定义者</td>
										<td class="user-search-col2">说明</td>
										<td class="user-search-col8">用户可以请求责任</td>
										<td class="user-search-col8">操作</td>
									</tr>
								</table>
							</div>
							<div id="user-searching-tab-out">
								<table class="fulltab">
									<c:if test="${groups.size() == 0}">
										<tr>
											<td colspan="7" class="no-item f-13 grey">暂无用户</td>
										</tr>
									</c:if>
									<c:forEach var="group" items="${groups}">
										<tr class="order-t-col2">
											<td class="user-search-col8">
												<a name="groupCheckedName" href="groupDetail?uniqueName=${group.uniqueName}">${group.name}</a>
												<input type="hidden" name="groupChecked" value="${group.uniqueName} " />
											</td>
											<td class="user-search-col8">${group.difiner}</td>
											<td class="user-search-col2">${group.description}</td>
											<td class="user-search-col8">是</td>
											<td class="user-search-col8">
												<div class="btn-group" align="right">
												<button class="btn-m" data-toggle="dropdown">操作&nbsp;<span class="caret"></span></button>
													<ul class="dropdown-menu manu-btn-o">
														<!-- <li><a class="manu-btn" href=""></a></li> -->
														<li><a class="manu-btn" href="javascript:void(0);" onclick="delete_group(this)">删除</a></li>
													</ul>
												</div>
											</td>
										</tr>
									</c:forEach>
								</table>
							</div>
							<div>
								<table class="fulltab">
									<tr class="searching-tab-row3">
										<td colspan="8">
											<!-- <button class="btn-w">生成密码</button> -->
											<button class="btn-w" onclick="window.location.href='groupCreation.html'">创建用户组</button>
										</td>
									</tr>
								</table>
							</div>
				 		</div>
					 </div>
				</div>
			</div>
		</div>
		<div class="foot">
			<div class="black f-12 foot-con">Copyright &copy; 2017.Demo. All rights reserved.</div>
		</div>

	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	  <!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
<script>
	function delete_group(a) {
		var _current_tr = $(a).parent().parent().parent().parent().parent();
		var _groupUniqueName =$(_current_tr).find("input").val();
		var _groupName = $(_current_tr).find("a[name='groupCheckedName']").html();
		if(confirm('确定要删除  \' '+_groupName+'\' 吗？') == true){
			$.ajax({
				url : 'groupDelete',// 跳转到 controller 
				data : {'groupUniqueName':_groupUniqueName},
				type : 'post',
				//contentType : 'application/json;charset=utf-8', //发送信息至服务器时内容编码类型。    
				success : function(data) {
					alert(data.result);
					if(data.result == "删除成功！"){
						window.location.reload();
					}
				},
				error : function() {
					alert("删除失败！请重试！");
				}
			});
		}
	}
</script>
	</body>
</html>
