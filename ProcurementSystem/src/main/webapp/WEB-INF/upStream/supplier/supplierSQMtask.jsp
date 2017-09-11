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
						<a class="p2p-supplier-title-main">供应商资格管理项目</a> <br>
					</div>
					
					<div class="right" id="supplier-detail-top">
						<table>
							<tr>
								<td class="text-right">标识符：</td>
								<td>WS100000203</td>
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
						onclick="window.location.href='sqmSummary'">概述</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmDoc'">文档</button>
					<button class="tag-clicked"
						onclick="window.location.href='sqmTask'">任务</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmTeam'">团队</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmInfo'">信息板</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmNews'">事件消息</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmHistory'">历史记录</button>
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
				<div class="standard-subtitle">惠普（北京）
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
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="">发布第一份调查文档<span class="caret"></span></a>
							</td>
							<td><a href="">第一份问卷调查<span class="caret"></span></a></td>
							<td>zhangliu</td>
							<td>已安排发布</td>
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
				location.href="supplierSearch?action=back";
			}
		</script>
</body>
</html>
