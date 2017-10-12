<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 标题 -->
<div class="p2p-supplier-title" style="height: 46px;">
	<div class="left">
		<a class="p2p-supplier-title-main">模板</a> <br>
	</div>
</div>
<!-- 导航 -->
<div class="tag-line">
	<button id="summary" class="tag-not-clicked"
		onclick="window.location.href='templateSummary'">概述</button>
	<button id="doc" class="tag-not-clicked"
		onclick="window.location.href='templateDoc'">文档</button>
	<button id="team" class="tag-not-clicked"
		onclick="window.location.href='templateTeam'">团队</button>
	<button id="history" class="tag-not-clicked"
		onclick="window.location.href='templateHistory'">历史记录</button>
</div>
<script>

function back() {
	location.href = "/ProcurementSystem/buyer/main";
}</script>