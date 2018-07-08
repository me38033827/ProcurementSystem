<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../../other/header1return.jsp"%>
<script src="/ProcurementSystem/js/simTree.js"></script>
<script src="/ProcurementSystem/js/simQuestionnaire.js"></script>
<script src="/ProcurementSystem/js/bootstrap-select.js"></script>
<script src="/ProcurementSystem/js/my-bootstrap-treeview.js"></script>
<!-- <script src="/ProcurementSystem/js/dataTables/dataTables.bootstrap.js"></script>
<script src="/ProcurementSystem/js/dataTables/jquery.dataTables.js"></script> -->
<link rel="stylesheet" type="text/css" href="/ProcurementSystem/css/bootstrap-select.css">
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

	<!-- <label for="multiple"></label>
	<select id="multiple" class="selectpicker bla bla bli" multiple >
    		<option>cow</option>
  	</select> -->
 
 <!-- 	<input type="checkbox" id="123" class="chk" value="123">
 	<label for="123"></label><span>123</span><br>
 	<input type="checkbox" id="124" class="chk" value="123">
 	<label for="124">2</label>
 	 -->
	<!-- <div id="back"></div> -->
	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../../../other/supplierFooter.jsp"%>

	<script>
		function back(){
			location.href="supplierInformationManagement";
		}
		$(function(){
 	        var defaultData = ${treeData};
 	        $('#treeview-sim').treeview({
				data: defaultData,
				collapsed:true
 	       	});
		})
		
		$(function(){
			/* $(window).on('load', function () {
			
				$('.selectpicker').selectpicker({
	                'selectedText': 'cat'
	            });
	        }); */
	        //添加多选和时间选项
			$.ajax({
				data:{},  
				type:"POST",  
				dataType: 'json',
			    url:"../supplier/getMultiSelectionDate",
			    success:function(data){
			    		//初始化搜索条件
			    		console.log(data);
			    		//alert(12);
			    		for(var i=0; i<data.length; i++){
			    			if(data[i].answerType==5){
			    				//日期
			    				
			    			}else{
			    				//多选
			    				var place = "#"+data[i].id;
			    				for(var j=0; j<data[i].selections.length;j++){
			    					var label=data[i].id + "-" + data[i].selections[j].selectionId;
			    					var content = data[i].selections[j].content;
			    					/*var newInput = document.createElement("input"); 
			    					newInput.type="checkbox";
			    					newInput.id=label;
			    					newInput.setAttribute("class","chk");
			    					var newLabel = document.createElement("label"); 
			    					newLabel.id
			    					newLabel.setAttribute("for",label);
			    					$(place).append(newInput);
			    					$(place).append(newLabel);
			    					$("#back").append(newInput);
			    					$("#back").append(newLabel); */
			    					$(place).append("<input class=\"checkbox\" type=\"checkbox\" name=\""+label+"\" value=\""+content+"\">"
											+content);
			    					/* $(place).append("<input type=\"checkbox\" id=\""+label+"\" class=\"chk\" value=\""+content+"\">"
									+"<label for=\""+label+"\"></label><br>"+content); */
				    			
			    				}
			    			}
			    		}
			    		$("#back").append("<input type=\"checkbox\" name=\"213\" value=\""+content+"\">"
								+"<br>"+content);
			   	},
			    error:function(data){
			    		alert("数据库错误！")
			    }  
			});
		});
	</script>
</body>
</html>
