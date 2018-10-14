<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<%@include file="../../other/header1.jsp"%>
<script src="/ProcurementSystem/js/simTree.js"></script>
<script src="/ProcurementSystem/js/simQuestionnaire.js"></script>

</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="standard-title">
					<div class="standard-title-main">控制台</div>
				</div>

				<div class="adjust-10"></div>

				<div class="row">
					<div class="col-md-2">
						<div class="contract-crea-left left blue" id="left-menu">
							<button id="contract-crea-not-clicked" style="height: 35px; font-size: ">事件消息</button>
							<button id="contract-crea-not-clicked" style="height: 35px;">事件详细信息</button>
							<button id="contract-crea-not-clicked" style="height: 35px;">响应历史记录</button>
							<button id="contract-crea-not-clicked" style="height: 35px;">参与团队</button>
							<br>
							<br>
							<button style="background-color: #EBEBEB; color: black; height: 35px;">事件内容</button>
						</div>
						
						<!-- 菜单标题显示问卷问题 -->
						<div class="contract-crea-left left blue" id="question-nav">
							
						</div>
					</div>
					
					<div class="col-md-10">
						<div class="alert alert-success" role="alert"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> 您的响应已经提交。感谢您参与此事件。</div>
						<span style="text-align: center;"><button style="margin: auto; display: block;" onclick="changeAnswer()" type="button" class="btn btn-primary">修订响应</button></span>
						
						<div class="standard-subtitle">全部内容</div>
						<div>
							<table class="table table-hover">
								<tr class="standard-row1">
									<td style="width: 75%;">名称</td>
									<td style="width: 25%;">答案</td>
								</tr>
							</table>
						</div>
						
						<!-- 调查问卷显示部分 -->
						<div class="row">
							<div class="col-md-12">
								<!-- 问卷内容 -->
								<div id="treeview-sim" class=""></div>
							</div>
						</div>
						
						<div class="adjust-10"></div>
						<div class="adjust-10"></div>
					
						<div class="left">
							<button class="btn-w" onclick="">撰写消息</button>
						</div>
					</div>
							
					<div class="adjust-10"></div>
					<div class="adjust-10"></div>
					<div class="adjust-10"></div>
					<div class="adjust-10"></div>
				</div>
					
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
			</div>
		</div>
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<!-- CONTENT-WRAPPER SECTION END-->
	<!-- 选择商品 -->
	<div class="theme-popover-mask"></div>
	
	<script>
		$(function() {
			var defaultData = ${treeData};
			$('#treeview-sim').treeview({
				data : defaultData
			});
		})
		
		function changeAnswer(){
			if (confirm("确认更改事件？\n单击ok更改。")){
				window.location.replace("editQuestionnaireData");
			}
		}
	</script>
</body>
</html>
