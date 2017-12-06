<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1return.jsp"%>
<script src="../../js/my-bootstrap-treeview.js"></script>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->

				<%@include file="supplierSQMNav.jsp"%>

				<div class="tag-line">
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmSummary'">概述</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmDoc'">文档</button>
					<button class="tag-clicked"
						onclick="window.location.href='sqmTask'">任务</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmTeam'">团队</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmInfo'">信息板</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmNews'">事件消息</button>
				</div>

				<div class="adjust-10"></div>
				<div class="adjust-10"></div>

				<div>
					显示： <select id="my-select">
						<option>（任何状态）</option>
						<option>未完成／完成</option>
						<option>选项2</option>
					</select>&nbsp;&nbsp; <select id="my-select">
						<option>必需／可选</option>
						<option>必需</option>
						<option>可选</option>
					</select>&nbsp;&nbsp; <select id="my-select">
						<option>任何所有者</option>
						<option>选项1</option>
						<option>选项2</option>
					</select>
				</div>

				<div class="adjust-10"></div>
				<div class="standard-subtitle">${sqm.title}
					<div class="btn-group right">
						<button class="btn-m" data-toggle="dropdown">
							操作&nbsp;<span class="caret"></span>
						</button>
						<ul class="dropdown-menu manu-btn-o">
							<li><a class="manu-deactive">创建</a></li>
							<li><a class="manu-active"
								href="templateSIMTaskPhaseCreate?parentId=${sqm.templateTaskTreeNode.id }">&nbsp;&nbsp;阶段</a></li>
							<li><a class="manu-active"
								href="templateSIMTaskScheduleCreate?parentId=${sqm.templateTaskTreeNode.id }">&nbsp;&nbsp;待办事项</a></li>
						</ul>
					</div>
				</div>

				<div>
					<div class="">
						<div class="standard-row1">
							<div class="template-tree-title1">名称</div>
							<div class="template-tree-title2">所有者</div>
							<div class="template-tree-title3">状态</div>
							<div style="clear: both"></div>
						</div>
						<div id="treeview1"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<script>
		function back() {
			location.href = "../search/supplierSearchDistribute?page=2006";
		}
		$(function() {
			console.log( ${json});
		    var $tree = $('#treeview1').treeview({
		   	 data: ${json}
		    });
		});
		function createTemplateTaskPhase(id){
			window.location.href="templateSIMTaskPhaseCreate?parentId="+id;
		}
		function createTemplateTaskSchedule(id){
			window.location.href="templateSIMTaskScheduleCreate?parentId="+id;
		}
		function templateTaskPhaseEdit(id){
			window.location.href="templateTaskPhaseEdit?id="+id;
		}
		function templateTaskPhaseDelete(id){
			window.location.href="templateTaskTreeNodeDelete?id="+id;
		}
		function templateTaskScheduleEdit(id){
			window.location.href="templateTaskScheduleEdit?id="+id;
		}
		function templateTaskScheduleDelete(id){
			window.location.href="templateTaskTreeNodeDelete?id="+id;
		}
		function templateTaskScheduleInfo(id){
			window.location.href="templateTaskScheduleInfo?id="+id;
		}
		function templateTaskPhaseInfo(id){
			window.location.href="templateTaskPhaseInfo?id="+id;
		}
		function templateTaskScheduleMarkStart(id){
			window.location.href="templateTaskScheduleMarkStart?id="+id;
		}
		function templateTaskScheduleMarkComplete(id){
			window.location.href="templateTaskScheduleMarkComplete?id="+id;
		}
		function templateTaskScheduleReactive(id){
			window.location.href="templateTaskScheduleReactive?id="+id;
		}
		function templateTaskPhaseMarkReactive(id){
			window.location.href="templateTaskPhaseMarkReactive?id="+id;
		}
		function templateTaskPhaseMarkComplete(id){
			window.location.href="templateTaskPhaseMarkComplete?id="+id;
		}
		function templateTaskPhaseMarkStart(id){
			window.location.href="templateTaskPhaseMarkStart?id="+id;
		}
	</script>
</body>
</html>
