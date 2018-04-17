<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户管理界面</title>
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
					<a class="inline-b black" id="searching-title">用户管理</a>
				</div>
				<div class="user-main">
					 <div>
					 	<a class="black f-14">搜索现有用户或创建新用户。搜索字段不区分大小写，您可以输入全部或部分名称。</a>
					 	<div id="filters" style="height:260px;">
					 		<div id="order-filter-line1">
					 			<div class="left black" id="order-filter-line1-title">搜索筛选器</div>
					 			<div class="right blue" id="order-filter-line1-option">添加／删除搜索筛选器</div>
					 		</div>
					 		<div id="order-filter-line2">
						 		<div class="inline-b col-md-6" style="padding-left:10%;">
						 			<form method="post" id="userSearch">
						 			<table>
						 				<tr>
						 					<td class="order-filter-left-col1">类型：
						 					</td>
						 					<td class="order-filter-left-col2">
												<select id="my-select" name="passwordAdapter">
													<option value="">全部</option>
													<option>第三方企业用户</option>
													<option>企业用户</option>
												</select>
						 					</td>
						 				</tr>
						 				<tr>
						 					<td class="order-filter-left-col1">用户标识符：
						 					</td>
						 					<td class="order-filter-left-col2"><input class="form-control input" name="userIdentifier"/>
						 					</td>
						 				</tr>
						 				<tr>
						 					<td class="order-filter-left-col1">名称：
						 					</td>
						 					<td class="order-filter-left-col2"><input class="form-control input" name="userName"/>
						 					</td>
						 				</tr>
						 				<tr>
						 					<td class="order-filter-left-col1">是否停用：
						 					</td>
						 					<td class="order-filter-left-col2">
						 						<div class="radio">
													<label><input type="radio"  name="status" id="optionsRadios1" value="已停用">是</label>
												  	<label><input type="radio"  name="status" id="optionsRadios2" value="已启用">否</label>
												  	<label><input type="radio"  name="status" id="optionsRadios2" checked>是或否</label>
												</div>
						 					</td>
						 				</tr>
						 				<!-- <tr>
						 					<td class="order-filter-left-col1">已激活：
						 					</td>
						 					<td class="order-filter-left-col2">
						 						<div class="radio">
													<label><input type="radio" name="activiate" id="optionsRadios1" value="已启用">是</label>
												  	<label><input type="radio" name="activiate" id="optionsRadios2" value="已停用">否</label>
												  	<label><input type="radio" name="activiate" id="optionsRadios2" value="" checked>是或否</label>
												</div>
						 					</td>
						 				</tr> -->
						 			</table>
						 			</form>
						 		</div>
					 			<div class="searching-ending">
									<div align="right">
										<button class="btn-b" form="userSearch"
										formaction="userSearching">搜索</button>
										<button class="btn-w"
											onclick="window.location.href='userSearching.html'">全部列出</button>
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
										<td class="user-search-col1">
											<label>
												<input type="checkbox" class = "checkboxes" value="" />
											</label>
										</td>
										<td class="user-search-col3">用户标识符</td>
										<td class="user-search-col3">名称</td>
										<td class="user-search-col4">类型</td>
										<td class="user-search-col5">已有密码</td>
										<td class="user-search-col6">上次登录</td>
										<td class="user-search-col7">受托人</td>
										<td class="user-search-col7">状态</td>
										<td class="user-search-col8">操作</td>
									</tr>
								</table>
							</div>
							<div id="user-searching-tab-out">
								<table class="fulltab">
									<c:if test="${users.size() == 0}">
									   <p>暂无用户</p>
									</c:if>
									<c:forEach var="user" items="${users}">
										<tr class="order-t-col2">
											<td class="user-search-col1">
												<label>
													<input type="checkbox" class = "checkboxes" value="${user.uniqueName} " />
												</label>
											</td>
											<td class="user-search-col3"><a href="userDetail?userUniqueName=${user.uniqueName}">${user.userIdentifier}</a></td>
											<td class="user-search-col3">${user.name}</td>
											<td class="user-search-col4">${user.passwordAdapter}</td>
											<td class="user-search-col5">是</td>
											<td class="user-search-col6">2017年7月20日</td>
											<td class="user-search-col7"></td>
											<td class="user-search-col7">${user.status}</td>
											<td class="user-search-col8">
												<div class="btn-group" align="right">
													<button class="btn-m" data-toggle="dropdown">操作&nbsp;<span class="caret"></span></button>
													<ul class="dropdown-menu manu-btn-o">
														<!-- <li><a class="manu-btn" href=""></a></li> -->
														<li><a class="manu-btn" href="javascript:void(0);" onclick="window.location.href='userDetail?userUniqueName=${user.uniqueName}&&param=edit'">编辑</a></li>
														<li>
															<c:if test="${user.status == '已启用'}">
																<a class="manu-btn" href="javascript:void(0);" onclick="stopOrStart(this)">停用</a>
															</c:if>	
															<c:if test="${user.status == '已停用'}">
																<a class="manu-btn" href="javascript:void(0);" onclick="stopOrStart(this)">启用</a>
															</c:if>		
														</li>
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
											<button class="btn-w" onclick="window.location.href='userCreation.html'">创建用户</button>
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
	function stopOrStart(btn){
		var current_tr = $(btn).parent().parent().parent().parent().parent();
		var _uniqueName =$(current_tr).find("input").val();
		$.ajax({
			url : 'stopOrStartUse',// 跳转到 controller 
			data : {'uniqueName':_uniqueName},
			type : 'post',
			//contentType : 'application/json;charset=utf-8', //发送信息至服务器时内容编码类型。    
			success : function(data) {
				if(data.result == "success"){
					window.location.reload();
				}else{
					alert("操作失败!");
				}
			},
			error : function() {
				alert("操作失败！请重试！");
			}
		});
	}
</script>
	</body>
</html>
