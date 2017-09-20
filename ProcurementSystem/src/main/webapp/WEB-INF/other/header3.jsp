<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<!-- 导航栏 第三行 -->
<div id="thirdline-out" style="background-color: transparent;">
	<form method="post" action="supplier/supplierSearchDistribute">
		<div class="col-md-2 inline-b left" id="search-service"
			style="postion: relative; left: 20px;">
			<select class="col-md-12" id="my-select" name="searchType">
				<option value="supplier">供应商和客户</option>
				<option value="sqm">供应商资格管理项目</option>
				<option value="spm">供应商绩效管理项目</option>
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

