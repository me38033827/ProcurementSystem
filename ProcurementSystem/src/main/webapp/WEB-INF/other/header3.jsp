<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<!-- 导航栏 第三行 -->
<div id="thirdline-out" style="background-color: transparent;">

	<div class="col-md-2 inline-b left" id="search-service"
		style="postion: relative; left: 20px;">
		<select class="col-md-12" id="my-select">
			<option value="">服务</option>
			<option>供应商和客户</option>
		</select>

	</div>
	<!-- 第三行搜索框 -->
	<div style="position: relative; left: 20px;">
		<input type="text" class="inline-b border-g left col-md-4"
			value="按部件号、供应商名称或关键字搜索"
			onfocus="if(this.value=='按部件号、供应商名称或关键字搜索') this.value=''"
			onblur="if(this.value=='')this.value='按部件号、供应商名称或关键字搜索' "
			style="top: 0px;">
		<button class="btn btn-default inline-b border-g left" id="search-btn"
			style="top: 0px;">
			<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
		</button>
	</div>
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
