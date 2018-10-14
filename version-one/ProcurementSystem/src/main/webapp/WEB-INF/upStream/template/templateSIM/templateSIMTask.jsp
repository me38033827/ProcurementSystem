<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../../other/header1return.jsp"%>
<script src="../../js/my-bootstrap-treeview.js"></script>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="row">
					<%@include file="templateSIMLeft.jsp"%>
					<div class="col-md-10">

						<%@include file="templateSIMNav.jsp"%>
						<div class="adjust-10"></div>
						<div class="adjust-10"></div>

						<div>
							<div>
								显示： <select class="createMode2" name="name">
									<option>任何状态</option>
								</select> <select class="createMode2" name="name">
									<option>必须/可选</option>
								</select> <select class="createMode2" name="name">
									<option>任何所有者</option>
								</select>
							</div>
							<div class="adjust-10"></div>
							<div class="btn-group right">
								<button class="btn-m" data-toggle="dropdown">
									操作&nbsp;<span class="caret"></span>
								</button>
								<ul class="dropdown-menu manu-btn-o">
									<li><a class="manu-deactive">创建</a></li>
									<li><a class="manu-active"
										href="templateSIMTaskPhaseCreate?parentId=${template.templateTaskTreeNode.id }">&nbsp;&nbsp;阶段</a></li>
									<li><a class="manu-active"
										href="templateSIMTaskScheduleCreate?parentId=${template.templateTaskTreeNode.id }">&nbsp;&nbsp;待办事项</a></li>
								</ul>
							</div>

							<div class="">
								${template.name }
								<div class="right"></div>
							</div>
						</div>
						<div class="adjust-10"></div>

						<div class="">
							<div class="standard-row1">
								<div class="template-tree-title1">名称</div>
								<div class="template-tree-title2">所有者</div>
								<div class="template-tree-title3">条件</div>
								<div style="clear: both"></div>
							</div>
							<div id="treeview1"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../../other/footer.jsp"%>
	<script>
		$("#task").attr("class", "tag-clicked")
		$(function() {
			console.log( ${json});
		    var $tree = $('#treeview1').treeview({
		   	 data: ${json},
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
		
	</script>
</body>
</html>
