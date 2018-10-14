<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../../other/header1return.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="standard-title">
					<div class="standard-title-main">添加区段</div> 
					<div class="standard-title-r">
						<button class="btn-b" form="addFolder" formaction="addFolder">确定</button>
						<button class="btn-w" onclick="window.location.href='simQuestionnaire'">取消</button>
					</div>
				</div>
				
				<div class="adjust-10"></div>
				
				<div class="standard-subsubtitle">${parentList }</div>
				
				<form id="addFolder" method="post">
					<input hidden="hidden" name = "parentId" value="${parentId }" />
					<input hidden="hidden" name="order" value="${order }" />
					<table class="fulltab">
						<tr class="row-standard">
							<td valign="top" class="col-standard1" style="width:200px; padding-top:5px;">名称：</td>
							<td class="col-standard2">
								<input name="title" class="input" style="padding-left:5px;"/>
							</td>
						</tr>
						<tr class="row-standard">
							<td valign="top" class="col-standard1" style="width:200px; padding-top:5px;">说明：</td>
							<td class="col-standard2" style="padding-top:8px;padding-bottom:8px;">
								<textarea name="description" class="input" style="width:400px; height:160px;"></textarea>
							</td>
						</tr>
						<tr class="row-standard">
							<td class="col-standard1">对参与者可见：</td>
							<td class="col-standard2">
								<select name="visibleToParticipants">
									<option value="1">是</option>
									<option value="0">否</option>
								</select>
							</td>
						</tr>
						<tr class="row-standard">
							<td class="col-standard1">团队访问控制：</td>
							<td class="col-standard2">
								<select name="groupRestriction">
									<option value="0">（无值）</option>
									<option value="1">财务信息</option>
									<option value="2">法律信息</option>
									<option value="3">仅限所有者／管理员</option>
									<option value="4">团队成员专用</option>
									<option value="5">已分类</option>
								</select>
							</td>
						</tr>
						<tr class="row-standard" id="visibleCondition">
							<td class="col-standard1">可见性条件：</td>
							<td class="col-standard2">（无）<span class="caret"></span></td>
						</tr>
					</table>
				</form>
				<div class="standard-ending">
				    <div align="right" class="standard-ending-r">
				    		<button class="btn-b" form="addFolder" formaction="addFolder">确定</button>
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
