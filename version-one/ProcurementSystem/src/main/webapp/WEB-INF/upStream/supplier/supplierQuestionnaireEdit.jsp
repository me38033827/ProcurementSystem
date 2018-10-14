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
<script src="/ProcurementSystem/js/my-bootstrap-treeview.js"></script>
<script src="/ProcurementSystem/js/selectCommodity.js"></script>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.metroui.org.ua/v4/js/metro.min.js"></script>
    
<!-- Required meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-all.min.css">

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
						<form id="finalForm" action="questionnaireResubmit" method="post">
							<div class="standard-subtitle">全部内容</div>
							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td style="width: 75%;">名称</td>
										<td style="width: 25%;">答案</td>
									</tr>
								</table>
							</div>
							<div style="border:1px solid #ddd; max-height:500px; overflow-x:scroll;">
				          		<ul id="treeviewMetro" data-role="treeview"></ul>
							</div>
						</form>
						
						<div class="adjust-10"></div>
						<div class="adjust-10"></div>
						
						<div class="left">
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">提交</button>
							<!-- Modal -->
							<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
									  		<h5 class="modal-title" id="exampleModalLabel">提交响应</h5>
										</div>
										<div class="modal-body">
											<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> 确定要提交此响应？
										</div>
										<div class="modal-footer">
										  <button type="button" class="btn btn-primary" onclick="finish()">确定</button>
										  <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
										</div>
									</div>
								</div>
							</div>
							<button class="btn-w" onclick="window.location.href='../search/supplierSearchDistribute?page=2004'">取消</button>
							<button class="btn-w" onclick="">撰写消息</button>
							<button class="btn-w" onclick="">Excel 导入</button>
						</div>
						
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
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<!-- CONTENT-WRAPPER SECTION END-->
	<!-- 选择商品 -->
	<div class="theme-popover-mask"></div>
	
	<script>
	
		$(function(){
		     var defaultData = ${treeData};
		     
		     var html = $.parseHTML(defaultData.res);
		     $("#treeviewMetro").append(html);
		});
		
		$(document).ready(function() {
			var title = $("ul#treeviewMetro").children();
			for (var i = 0; i < title.length; i++){
				var title_counter = i+1;
				$("#question-nav").append("<button id=\"contract-crea-not-clicked\" onclick=\"questionNav()\" style=\"height: 35px;\">" + title_counter + " " +title[i].getAttribute("data-caption") + "</button>");
			}
		});
		
		function finish(){
			$("#finalForm").submit();
		}
		
		
	</script>
	
</body>
</html>
