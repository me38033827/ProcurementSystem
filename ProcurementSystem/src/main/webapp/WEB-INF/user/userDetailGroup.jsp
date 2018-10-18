<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="../other/header1.jsp"%>
<%@ include file="../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">

		<!-- 主要内容 -->
		<div class="con">
			<!-- <div id="searching-title-out">
				<a class="inline-b black" id="searching-title">查看“用户1”的详细信息</a>
				<button class="btn-w right"
					onclick="window.location.href='user-searching1.html'">完成</button>
			</div> -->
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line4">
					<button class="order-detail-not-clicked"
						onclick="window.location.href='userDetail?userUniqueName=${user.uniqueName}'">常规</button>
					<button class="order-detail-clicked"
						onclick="window.location.href='userDetailGroup?userUniqueName=${user.uniqueName}'">组</button>
					<button class="order-detail-not-clicked">所有组</button>
				</div>
				<br/><br/>
				<div id="order-result-out">
					<div>
						<table class="fulltab">
							<tr class="searching-tab-row1">
								<td class="user-search-col1">
									<!-- <label>
										<input type="checkbox" class = "checkboxes" value="" />
									</label> -->
								</td>
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
							<c:if test="${user.groups.size() == 0}">
								<tr>
									<td colspan="7" class="no-item f-13 grey">暂无所属组织</td>
								</tr>
							</c:if>
							<c:forEach var="group" items="${user.groups}">
								<tr class="order-t-col2">
									<td class="user-search-col1">
										<label>
											<input type="checkbox" name="groupChecked" class = "checkboxes" value="${group.uniqueName} " />
										</label>
									</td>
									<td class="user-search-col8"><a href="group/groupDetail?uniqueName=${group.uniqueName}&&param=edit">${group.name}</a></td>
									<td class="user-search-col8">${group.difiner}</td>
									<td class="user-search-col2">${group.description}</td>
									<td class="user-search-col8">是</td>
									<td class="user-search-col8">
										<div class="btn-group" align="right">
										<button class="btn-m" data-toggle="dropdown">操作&nbsp;<span class="caret"></span></button>
											<ul class="dropdown-menu manu-btn-o">
												<!-- <li><a class="manu-btn" href=""></a></li> -->
												<li><a class="manu-btn" href="javascript:void(0);" onclick="sim_delete(this)">删除</a></li>
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
									<button class="btn-w" onclick="window.location.href='selectGroup?uniqueName=${user.uniqueName}'">添加组织</button>
									<button class="btn-w" onclick="mul_delete()">批量删除</button>
								</td>
							</tr>
						</table>
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
		var _current_tr = $(btn).parent().parent().parent().parent().parent();
		var _groupUniqueName =$(_current_tr).find("input").val();
		var _groupName = $(_current_tr).children('td').eq(1).children().html();
		var _userUniqueName = ${user.uniqueName};
		var _userlist = new Array();
		_userlist[0] = _userUniqueName;
		var _grouplist = new Array();
		_grouplist[0] = _groupUniqueName;
		if(confirm('确定要从把当前用户从 '+_groupName+' 中删除吗？') == true){
			$.ajax({
				url : 'group/deleteUserFromGroup',// 跳转到 controller 
				data : JSON.stringify({'groups':_grouplist,'users':_userlist}),
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
		var _userlist = new Array();
		_userlist[0] = ${user.uniqueName};
		var _grouplist = new Array();
		$('input[name="groupChecked"]:checked').each(function(i) {
			_grouplist[i] = $(this).val();
		});
		if (_grouplist.length != 0) {
			
			if(confirm('确定要删除选中的   ' + _grouplist.length + ' 个组织吗？') == true){
				$.ajax({
					url : 'group/deleteUserFromGroup',// 跳转到 controller 
					data : JSON.stringify({'groups':_grouplist,'users':_userlist}),
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
