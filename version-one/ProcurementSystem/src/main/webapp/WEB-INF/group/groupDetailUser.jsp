<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="../other/header1.jsp"%>
<%@ include file="../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>用户组详情</title>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">

		<!-- 主要内容 -->
		<div class="con">
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line4">
					<button class="order-detail-not-clicked"
							onclick="window.location.href='groupDetail?uniqueName=${group.uniqueName}'">常规</button>
					<button class="order-detail-clicked"
							onclick="window.location.href='groupDetailUser?uniqueName=${group.uniqueName}'">用户</button>
					<button class="order-detail-not-clicked">子组</button>
				</div>
				<br/>
				<div style="height:500px;">
					<div id="order-result-out">
						<div>
							<table class="fulltab">
								<tr class="searching-tab-row1">
									<td class="user-search-col1">
										<!-- <label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label> -->
									</td>
									<td class="user-search-col3">用户标识符</td>
									<td class="user-search-col3">用户名</td>
									<td class="user-search-col4">类型</td>
									<td class="user-search-col8">操作</td>
								</tr>
							</table>
						</div>
						<div id="user-searching-tab-out">
							<table class="fulltab">
							<c:if test="${group.users.size() == 0}">
								<tr>
									<td colspan="7" class="no-item f-13 grey">暂无用户</td>
								</tr>
							</c:if>
								<c:forEach var="user" items="${group.users}">
									<tr class="order-t-col2">
										<td class="user-search-col1">
											<label>
												<input type="checkbox" name="userChecked" class = "checkboxes" value="${user.uniqueName} " />
											</label>
										</td>
										<td class="user-search-col3"><a href="../userDetail?userUniqueName=${user.uniqueName}">${user.userIdentifier}</a></td>
										<td class="user-search-col3">${user.name}</td>
										<td class="user-search-col4">${user.passwordAdapter}</td>
										<td class="user-search-col8">
											<button class="btn-w" onclick="sim_delete(this)">删除</button>
										</td>
									</tr>
								</c:forEach>
							</table>
						</div>
						<div>
							<table class="fulltab">
								<tr class="searching-tab-row3">
									<td colspan="8">
										<button class="btn-w" onclick="window.location.href='selectUser?uniqueName=${group.uniqueName}'">添加用户</button>
										<button class="btn-w" onclick="mul_delete()">批量删除</button>
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
		<div class="black f-12 foot-con">Copyright &copy; 2017.Demo. All
			rights reserved.</div>
	</div>


	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
<script>
	/*单项删除用户*/
	function sim_delete(btn) {
		var _current_tr = $(btn).parent().parent();
		var _userUniqueName =$(_current_tr).find("input").val();
		var _userName = $(_current_tr).children('td').eq(1).children().html();
		var _grouplist = new Array();
		_grouplist[0] = ${group.uniqueName};
		var _list = new Array();
		_list[0] = _userUniqueName;
		if(confirm('确定要从当前组中删除用户 '+_userName+' 吗？') == true){
			$.ajax({
				url : 'deleteUserFromGroup',// 跳转到 controller 
				data : JSON.stringify({'groups':_grouplist,'users':_list}),
				type : 'post',
				contentType : 'application/json;charset=utf-8', //发送信息至服务器时内容编码类型。    
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
	/*多选删除用户*/
	function mul_delete() {
		var _grouplist = new Array();
		_grouplist[0] = ${group.uniqueName};
		var _list = new Array();
		$('input[name="userChecked"]:checked').each(function(i) {
			_list[i] = $(this).val();
		});
		if (_list.length != 0) {
			
			if(confirm('确定要删除选中的   ' + _list.length + ' 个用户吗？') == true){
				$.ajax({
					url : 'deleteUserFromGroup',// 跳转到 controller 
					data : JSON.stringify({'groups':_grouplist,'users':_list}),
					type : 'post',
					contentType : 'application/json;charset=utf-8',
					success : function(data) {
							alert(data.result);
							if(data.result == "删除成功！"){
								window.location.reload();
								/* window.location.href='groupDetailUser?uniqueName='+uniqueName; */
							}else{
								window.location.reload();
							}
					},
					error : function() {
						alert("删除失败！请重试！");
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
