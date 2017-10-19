<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../../other/header1return.jsp"%>
<script src="/ProcurementSystem/js/bootstrap-treeview.js"></script>
<script src="/ProcurementSystem/js/simQuestionnaire.js"></script>
<title>供应商详情－概要</title>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="standard-title">
					<div class="standard-title-main">供应商概要问卷</div> 
					<div class="standard-title-r">
						<button class="btn-b">完成</button>
						<button class="btn-w">取消</button>
						<div class="btn-group" style="margin-top:0;">
							<button class="btn-w" data-toggle="dropdown">添加&nbsp;<span class="caret"></span>
							</button>
							<ul class="dropdown-menu manu-btn-o">
								<li><a class="manu-btn" onclick="window.location.href=''">供应商</a></li>
								<li><a class="manu-btn">客户</a></li>
							</ul>
						</div>
					</div>
				</div>
				
				<div class="adjust-10"></div>

				<div>
		          <div id="treeview-sim" class=""></div>
		        </div>
				
			</div>
		</div>
	</div>


	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../../../other/supplierFooter.jsp"%>

	<script>
		function back(){
			location.href="supplierSearch?action=back";
		}
		$(function(){
 	        var defaultData = ${treeData};
 	        $('#treeview-sim').treeview({
 	          data: defaultData
 	        });
		})
		
		
	</script>
</body>
</html>
