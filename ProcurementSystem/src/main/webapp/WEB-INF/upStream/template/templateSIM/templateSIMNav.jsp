<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- supplier detail title -->
<div class="p2p-supplier-title">
	<div class="left">
		<a class="p2p-supplier-title-main"> 信息项目模板</a> <br>
		<div>信息信息项目</div>
	</div>

	<div class="right" id="supplier-detail-top">
		<table>
			<tr>
				<td class="text-right">标识符：</td>
				<td>WS${sqm.id }</td>
			</tr>
			<tr>
				<td class="text-right">任务：</td>
				<td>未完成的任务：0</td>
			</tr>
		</table>
	</div>
</div>
<div class="tag-line">
	<button class="tag-not-clicked" id="summary"
		onclick="window.location.href='templateSIMSummary'">概述</button>
	<button id="doc" class="tag-not-clicked"
		onclick="window.location.href='templateSIMDoc'">文档</button>
	<button class="tag-not-clicked" id="task"
		onclick="window.location.href='templateSIMTask'">任务</button>
	<button id="team" class="tag-not-clicked"
		onclick="window.location.href='templateSIMTeam'">团队</button>
	<button class="tag-not-clicked" id="condition"
		onclick="window.location.href='templateSIMCondition'">条件</button>
	<button class="tag-not-clicked" id="option"
		onclick="window.location.href='templateSIMOption'">高级选项</button>
	
</div>


