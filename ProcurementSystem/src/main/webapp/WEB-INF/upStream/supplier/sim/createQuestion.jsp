<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../../other/header1return.jsp"%>
<script src="/ProcurementSystem/js/simCreateQuestion.js"></script>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="standard-title">
					<div class="standard-title-main">添加问题</div> 
					<div class="standard-title-r">
						<button class="btn-b" form="addQuestion" formaction="addQuestion">完成</button>
						<button class="btn-w" onclick="window.location.href='simQuestionnaire'">取消</button>
					</div>
				</div>
				
				<div class="adjust-10"></div>
				
				<div class="standard-subsubtitle"> ${parentList }</div>
				
				<form id="addQuestion" method="post">
					<input hidden="hidden" name = "parentId" value="${parentId }" />
					<input hidden="hidden" name="order" value="${order }" />
					<table class="fulltab">
						<tr class="row-standard">
							<td valign="top" class="col-standard1" style="width:200px; padding-top:5px;">名称：</td>
							<td class="col-standard2" style="height:110px;">
								<textarea name="title" class="input" style="width:280px; height:100px;padding-left:5px;"></textarea>
							</td>
						</tr>
						<tr class="row-standard">
							<td class="col-standard1">位置：</td>
							<td class="col-standard2">在里面添加</td>
						</tr>
						<tr class="row-standard">
							<td class="col-standard1">答案类型：</td>
							<td class="col-standard2">
								<select name="answerType">
									<option value="1">文本（单行）</option>
									<option value="2">文本（多行）</option>
									<option value="3">整数</option>
									<option value="4">小数</option>
									<option value="5">日期</option>
									<option value="6">货币</option>
									<option value="7">是／否</option>
									<option value="8">百分比</option>
									<option value="9">数量</option>
								</select>
							</td>
						</tr>
						<tr class="row-standard">
							<td class="col-standard1">可接受的值：</td>
							<td class="col-standard2">
								<select id="acceptValue" name="acceptValue" onchange="selectAcceptValue();">
									<option value="1">任意值</option>
									<option value="2">选择列表</option>
								</select>
							</td>
						</tr>
						<tr class="row-standard" id="initial">
							<td class="col-standard1">初始值：</td>
							<td class="col-standard2"><input class="input" name="initialAnswer"/></td>
						</tr>
						<tr class="row-standard" id="selection-list" hidden="hidden">
							<td class="col-standard1" valign="top">选择列表：</td>
							<td class="col-standard2">
								<table class="table table-hover" style="width:50%;margin-top:5px; margin-bottom:5px;">
									<tr class="standard-row1" id="selection-title">
										<td style="padding-left:20px;">值</td>
										<td></td>
									</tr>
									<tr id="selection-outer-1" >
										<td style="padding:5px 20px;">
											<input class="input" style="margin-right:200px;padding-left:10px;" id="selection-1" name="selection-1"/>
										</td>
										<td id="selection-btn-1">
											<button type="button" class="trans-btn grey" onclick="deleteSelection(1);">删除</button>
										</td>
									</tr>
									<tr class="standard-row3">
										<td colspan="2">
											<a class="arrow-turn">&#8627;</a>
											<button type="button" class="btn-w" onclick="addSelection();">添加</button>
											<input id="selection" name="selection" hidden="hidden" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr class="row-standard" id="multiple" hidden="hidden">
							<td class="col-standard1">允许参与者选择多个值吗：</td>
							<td class="col-standard2">
								<select name="multipleValue">
									<option value="0">否</option>
									<option value="1">是</option>
								</select>
							</td>
						</tr>
					</table>
				</form>
				
				<div class="standard-ending">
				    <div align="right" class="standard-ending-r">
				    		<button class="btn-b" form="addQuestion" formaction="addQuestion">确定</button>
						<button class="btn-w" onclick="window.location.href='simQuestionnaire'">取消</button>
				    </div>  
				</div>
			</div>
		</div>
	</div>


	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../../../other/supplierFooter.jsp"%>

	<script>
		var selection = 1;
		function back(){
			location.href="simQuestionnaire";
		}
	</script>
</body>
</html>
