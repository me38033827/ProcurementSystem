<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>供应商详情－文档</title>
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
					
					<div class="right" id="supplier-detail-top" >
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
					<button class="tag-clicked"
						onclick="window.location.href='spmDoc'">文档</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='spmTask'">任务</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='spmTeam'">团队</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='spmInfo'">信息板</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='spmNews'">事件消息</button>
				</div>
				
				<div class="adjust-10"></div>
	
				<div class="standard-subtitle">${spm.title}
					<div class="right">
						<a href="" class="f-14">显示详细信息</a>&nbsp;&nbsp;&nbsp;
						<div class="btn-group" >
							<button class="btn-m" data-toggle="dropdown">
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
							<td style="width:20%;">所有者</td>
							<td style="width:20%;">状态</td>
						</tr>
						<tr>
							<td>
								<button id="doc1close" class="trans-btn" onclick="open();" hidden="hidden">
									<span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span>
									<span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
									&nbsp;&nbsp;内部评分卡和调查文档
								</button>
								<button id="doc1open" class="trans-btn" onclick="close();">
									<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span>
									<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									&nbsp;&nbsp;内部评分卡和调查文档
								</button>
							</td>
							<td><a href="">所有者</a></td>
							<td></td>
						</tr>
						<tr>
							<td style="padding-left:60px;">
								<a>内部评分卡</a>
							</td>
							<td><a href="">所有者</a></td>
							<td>未创建</td>
						</tr>
						<tr>
							<td style="padding-left:60px;">
								<a>内部调查反馈</a>
							</td>
							<td><a href="">所有者</a></td>
							<td>未创建</td>
						</tr>
						<tr>
							<td>
								<button id="doc2close" class="trans-btn" onclick="open();" hidden="hidden">
									<span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span>
									<span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
									&nbsp;&nbsp;供应商调查和评分文档
								</button>
								<button id="doc2open" class="trans-btn" onclick="close();">
									<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span>
									<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									&nbsp;&nbsp;供应商调查和评分文档
								</button>
							</td>
							<td><a href="">所有者</a></td>
							<td></td>
						</tr>
						<tr>
							<td style="padding-left:60px;">
								<a>供应商评分卡</a>
							</td>
							<td><a href="">所有者</a></td>
							<td>未创建</td>
						</tr>
						<tr>
							<td style="padding-left:60px;">
								<a>供应商调查反馈</a>
							</td>
							<td><a href="">所有者</a></td>
							<td>未创建</td>
						</tr>
						<tr>
							<td>
								<button id="doc1open" class="trans-btn" onclick="close();">
									<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span>
									<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									&nbsp;&nbsp;计划
								</button>
							</td>
							<td><a href="">所有者</a></td>
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
