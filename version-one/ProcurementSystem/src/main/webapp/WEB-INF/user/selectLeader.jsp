<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<div class="theme-popover commodity-selection">
				<div id="searching-title-out">
					<a class="inline-b black" id="searching-title">选择上级主管</a>
				</div>
				<div class="user-main">
					 <div>
					 	<a class="black f-14">搜索现有用户。搜索字段不区分大小写，您可以输入全部或部分名称。</a>
					 	<div id="filters" style="height:180px;">
					 		<div id="order-filter-line1">
					 			<div class="left black" id="order-filter-line1-title">搜索筛选器</div>
					 			<div class="right blue" id="order-filter-line1-option">添加／删除搜索筛选器</div>
					 		</div>
					 		<div id="order-filter-line2">
						 		<form method="post" id="leaderSearch">
						 		<div class="inline-b col-md-6" style="padding-left:10%;">
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
						 		</div>
					 			<div class="searching-ending">
									<div align="right">
										<button class="btn-b" type="button" onclick="getUsers()">搜索</button>
										<button class="btn-w" type="reset">重置</button>
									</div>
								</div>
								</form>
					 		</div>
					 	</div>
					 		
				 		<div class="adjust1"></div>
						
						<div id="order-result-out">
							<div>
								<table class="fulltab">
									<tr class="searching-tab-row1">
										<td class="user-search-col1">
										</td>
										<td class="user-search-col3">用户标识符</td>
										<td class="user-search-col3">名称</td>
										<td class="user-search-col3">类型</td>
										<td class="user-search-col8">选择</td>
									</tr>
								</table>
							</div>
							<div id="user-searching-tab-out">
								<!-- 用于显示主管列表 -->
								<table class="fulltab" id="leaderTable">
								</table>
							</div>
							<div>
							</div>
							<br/>
							<input type="button" class="btn-b right" onclick="cancelLeaderSelection();" value ="取消" />
				 		</div>
					 </div>
				</div>
			</div>
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
