<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<!-- 导航栏 第三行 -->
<div id="thirdline-out" style="background-color: transparent;">
	<form method="post" action="search/supplierSearchDistribute" onsubmit="return toSearchPage();">
		<div class="col-md-2 inline-b left" id="search-service"
			style="postion: relative; left: 20px;">
			<select class="col-md-12" id="page" name="page" onchange="resetFormAction();">
				<c:forEach var="pageOption" items="${pageOptions }" varStatus="status">
					<option value="${pageOption.pageId }">${pageOption.pageName }</option>
				</c:forEach>
			</select>
	
		</div>
		<!-- 第三行搜索框 -->
		<div style="position: relative; left: 20px;">
			
			<input type="text" name="content" class="inline-b border-g left col-md-4"
				placeholder="使用名称、标识符或任何其他词语搜索"
				style="top: 0px;">
			<button class="btn btn-default inline-b border-g left"
				id="search-btn" style="top: 0px;">
				<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
			</button>
		</div>
	</form>
	<!-- 第三行右侧图标 -->

	<div class="thirdline-icons">
		<button id="wrench-btn" onclick="">
			<span class="glyphicon glyphicon-wrench" aria-hidden="true" id=""></span>
		</button>
		<button id="refresh-btn" onclick="">
			<span class="glyphicon glyphicon-refresh" aria-hidden="true" id=""></span>
		</button>
	</div>

	<!-- 第三行右侧标记 -->
</div>
<script>
	$(function(){
		resetFormAction();
	});
	function resetFormAction(){
		var page = $("select[name=page]").find('option:selected').val();
		var url = "search/supplierSearchDistribute?page=" + page;
		$("form").attr('action',url);
	}
</script>

