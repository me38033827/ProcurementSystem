<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>添加用户</title>
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
					<a class="inline-b black" id="searching-title">添加用户到用户组</a>
				</div>
				<div class="user-main">
					 <div>
					 	<a class="black f-14">搜索现有用户。搜索字段不区分大小写，您可以输入全部或部分名称。</a>
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
						 			</table>
						 			</form>
						 		</div>
					 			<div class="searching-ending">
									<div align="right">
										<button class="btn-b" form="userSearch"
										formaction="/ProcurementSystem/userSearching?param=forGroup">搜索</button>
										<button class="btn-w"
												onclick="window.location.href='/ProcurementSystem/userSearching?param=forGroup'">全部列出</button>
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
												<input type="checkbox" class = "checkboxes" />
											</label>
										</td>
										<td class="user-search-col3">用户标识符</td>
										<td class="user-search-col3">名称</td>
										<td class="user-search-col4">类型</td>
									</tr>
								</table>
							</div>
							<div id="user-searching-tab-out">
								<table class="fulltab">
									<c:forEach var="user" items="${users}">
										<tr class="order-t-col2">
											<td class="user-search-col1">
												<label>
													<input type="checkbox" name="userChecked" class = "checkboxes" value="${user.uniqueName} " />
												</label>
											</td>
											<td class="user-search-col3"><a href="../userDetail?userUniqueName=${user.uniqueName}">${user.userIdentifier}</a></td>
											<td class="user-search-col3">${user.name}</td>
											<td class="user-search-col4">${user.passwordAdapter}</td>
										</tr>
									</c:forEach>
								</table>
								<input type="hidden" id="groupUniqueName" value="${groupUniqueName}" />
							</div>
							<div>
								<table class="fulltab">
									<tr class="searching-tab-row3">
										<td colspan="8">
											<!-- <button class="btn-w">生成密码</button> -->
											<button class="btn-w" onclick="addUserToGroup()">添加</button>
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
	function addUserToGroup(){
		var _groups = new Array();
		_groups[0] = $("#groupUniqueName").val();
		var _userlist = new Array();
		$('input[name="userChecked"]:checked').each(function(i) {
			_userlist[i] = $(this).val();
		});
		if (_userlist.length != 0) {
			
			if(confirm('确定要添加选中的   ' + _userlist.length + ' 条数据吗？') == true){
				$.ajax({
					url : 'addUserToGroup',// 跳转到 controller 
					data : JSON.stringify({'groups':_groups,'users':_userlist}),
					type : 'post',
					cache : false,
					contentType : 'application/json;charset=utf-8', //发送信息至服务器时内容编码类型。    
					success : function(data) {
							alert(data.result);
							if(data.result != "操作失败！请重试！"){
								window.location.href = document.referrer;
								/* window.location.href='group/groupDetailUser?uniqueName='+uniqueName; */
							}else{
								window.location.reload();
							}
					},
					error : function() {
						alert("添加失败！请重试！");
					}
				});
			}
			
		} else {
			alert("请选择要添加的选项");
			return false;
		}
	}
</script>
	</body>
</html>
