<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../../other/header1return.jsp"%>
<script src="/ProcurementSystem/js/simTree.js"></script>
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
						<button class="btn-b" onclick="window.location.href='supplierInformationManagement'">完成</button>
						<button class="btn-w" onclick="window.location.href='../mainSupplier'">取消</button>
					</div>
				</div>
				
				<div class="adjust-10"></div>

				<div style="border:1px solid #ddd; max-height:500px; overflow-x:scroll;">
		          <div id="treeview-sim" class=""></div>
		        </div>
		        
		        <div class="adjust-10"></div>
		       	<div class="right">
		       		<button class="btn-w" onclick="addFolderBottom()">添加区段</button>
		        		<button class="btn-w" onclick="addQuestionBottom()">添加问题</button>
				</div> 
			</div>
		</div>
	</div>


	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../../../other/supplierFooter.jsp"%>

	<script>
		function back(){
			location.href="supplierInformationManagement";
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
