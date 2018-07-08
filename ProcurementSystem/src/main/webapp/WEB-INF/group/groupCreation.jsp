<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>新建用户组</title>
<%@ include file="../other/header1.jsp"%>
<%@ include file="../other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">

		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">组－创建组</a>
				<div class="right">
					<button class="btn-b"
						onclick="groupCreationSubmit()">保存</button>
					<button class="btn-w"
						onclick="window.location.href='groupSearching.html'">取消</button>
				</div>
			</div>
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line2">
					<a class="black">创建新组，包括分配角色、权限、用户和子组。</a>
				</div>
				<div id="order-detail-line4">
					<button class="order-detail-clicked">常规</button>
					<button class="order-detail-not-clicked">用户</button>
					<button class="order-detail-not-clicked">子组</button>
				</div>

				<div class="adjust"></div>
				<form id="groupCreationForm">
				<div class="inline-b" id="user-detail-tab">
					<table>

						<tr>
							<td id="order-detail-tab-col1">＊定义者：</td>
							<td id="order-detail-tab-col2">
							<input type="hidden" name="difiner" value="<%= request.getSession().getAttribute("userUniqueName")%>" />
							<%= request.getSession().getAttribute("username")%></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">＊组名称：</td>
							<td id="order-detail-tab-col2"><input
								class="form-control input" name="name" id="name" /></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">说明：</td>
							<td id="order-detail-tab-col2"><textarea
									class="form-control" id="group-area" name="description"></textarea></td>
						</tr>
					</table>
				</div>
				</form>
				<div class="choice">
					<div class="right">
						<button class="btn-b" onclick="groupCreationSubmit()">保存</button>
						<button class="btn-w"
							onclick="window.location.href='groupSearching.html'">取消</button>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<div class="foot">
		<div class="black f-12 foot-con">Copyright &copy; 2017.Demo. All
			rights reserved.</div>
	</div>
	<script>
		function groupCreationSubmit(){
			var name = $("#name").val();
			if(name==''){
				alert("操作失败，存在标星号的项未填写！");
			}else{
				$.ajax({
					type:"POST",
					url:"groupCreationSubmit",
					data:$("#groupCreationForm").serialize(),
					//dataType : 'json',
					success : function(result) {
						alert(result.result);
						 window.location.reload();
					},
					error : function() {
						alert("操作失败，请重试！");
					}			
				});
			}
		}
	</script>

</body>
</html>
