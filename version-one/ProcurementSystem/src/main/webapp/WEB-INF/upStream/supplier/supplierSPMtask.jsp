<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>供应商详情－任务</title>
<%@include file="../../other/header1return.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
			<!-- 主要内容 -->
		
				<!-- supplier detail title -->
				<div class="p2p-supplier-title" style="height:46px;">
					<div class="left">
						<a class="p2p-supplier-title-main">供应商绩效管理项目</a> <br>
					</div>
					
					<div class="right" id="supplier-detail-top">
						<table>
							<tr>
								<td class="text-right">标识符：</td>
								<td>WS${spm.id}</td>
							</tr>
							<tr>
								<td class="text-right">任务：</td>
								<td>未完成的任务：0</td>
							</tr>
						</table>
					</div>
				</div>
				
				
	
	
				<div class="tag-line">
					<button class="tag-not-clicked"
						onclick="window.location.href='spmSummary'">概述</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='spmDoc'">文档</button>
					<button class="tag-clicked"
						onclick="window.location.href='spmTask'">任务</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='spmTeam'">团队</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='spmInfo'">信息板</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='spmNews'">事件消息</button>
				</div>
				
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				
				<div>
					显示：
					<select id="my-select">
						<option>（任何状态）</option>
						<option>未完成／完成</option>
						<option>选项2</option>
					</select>&nbsp;&nbsp;
					<select id="my-select">
						<option>必需／可选</option>
						<option>必需</option>
						<option>可选</option>
					</select>&nbsp;&nbsp;
					<select id="my-select">
						<option>任何所有者</option>
						<option>选项1</option>
						<option>选项2</option>
					</select>
				</div>
	
				<div class="adjust-10"></div>
				<div class="standard-subtitle">${spm.title}
					<div class="right">
						<div class="btn-group" >
							<button class="btn-m" data-toggle="dropdown" style="width:80px;">
								操作&nbsp;<span class="caret"></span>
							</button>
							<ul class="dropdown-menu manu-btn-o" >
								<li><a class="manu-btn" >编辑</a></li>
								<li><a class="manu-btn" >停用</a></li>
							</ul>
						</div>
					</div>
				</div>
				
				<div>
					<table class="table table-hover">
						<tr class="standard-row1">
							<td style="width:60%;">名称</td>
							<td style="width:10%;">文档</td>
							<td style="width:10%;">所有者</td>
							<td style="width:10%;">状态</td>
							<td style="width:10%;">截止日期</td>
						</tr>
						<tr>
							<td>
								<span class="glyphicon glyphicon-arrow-right blue" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="">计划<span class="caret"></span></a>
							</td>
							<td></td>
							<td>项目所有者</td>
							<td>未开始</td>
							<td></td>
						</tr>
						<tr>
							<td>
								<span class="glyphicon glyphicon-time blue" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="">监测－内部调查－半年度<span class="caret"></span></a>
							</td>
							<td></td>
							<td>项目所有者</td>
							<td>未开始</td>
							<td></td>
						</tr>
						<tr>
							<td>
								<span class="glyphicon glyphicon-time blue" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="">监测－供应商调查－半年度<span class="caret"></span></a>
							</td>
							<td></td>
							<td>项目所有者</td>
							<td>未开始</td>
							<td></td>
						</tr>
						<tr>
							<td>
								<span class="glyphicon glyphicon-arrow-right blue" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="">关闭<span class="caret"></span></a>
							</td>
							<td></td>
							<td>项目所有者</td>
							<td>未开始</td>
							<td></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<script>
		function back(){
			location.href="../search/supplierSearchDistribute?page=2005";
		}
	</script>
</body>
</html>
