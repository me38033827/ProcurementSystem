<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>供应商详情－任务</title>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<%@include file="../other/header1.jsp"%>
		<div class="container">
			<div class="standard-out">
			<!-- 主要内容 -->
		
				<!-- supplier detail title -->
				<div class="p2p-supplier-title">
					<div class="left">
						<a class="p2p-supplier-title-main">惠普（北京）</a> <br>
						<a class="p2p-supplier-subtitle">供应商工作区</a>
					</div>
					
					<div class="right" id="supplier-detail-top">
						<table>
							<tr>
								<td class="text-right">任务：</td>
								<td>未完成的任务：4</td>
							</tr>
							<tr>
								<td class="text-right">当前阶段：</td>
								<td>初始阶段</td>
							</tr>
							<tr>
								<td class="text-right">下一里程碑：</td>
								<td>GCM创建新的供应商</td>
							</tr>
						</table>
					</div>
				</div>
	
				<div class="tag-line">
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailSummary.jsp'">概述</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetail.jsp'">概要</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailReport.jsp'">报告</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailDoc.jsp'">文档</button>
					<button class="tag-clicked"
						onclick="window.location.href='supplierDetailTask.jsp'">任务</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailTeam.jsp'">团队</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailInfo.jsp'">信息板</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailNews.jsp'">事件消息</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailHistory.jsp'">历史记录</button>
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
								<span class="glyphicon glyphicon-triangle-bottom blue" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="glyphicon glyphicon-arrow-right blue" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="">PSC运行<span class="caret"></span></a>
							</td>
							<td></td>
							<td>项目所有者</td>
							<td>进行中</td>
							<td>2017年8月16日</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="glyphicon glyphicon-time blue" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="">PSC检查CPL和DPL列表＊<span class="caret"></span></a>
							</td>
							<td><a href="">惠普（北京）<span class="caret"></span></a></td>
							<td>PSC组</td>
							<td>未开始</td>
							<td>2017年8月16日</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="glyphicon glyphicon-warning-sign" style="color:orange;" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="">通知供应商完成问卷调查<span class="caret"></span></a>
							</td>
							<td></td>
							<td>项目所有者</td>
							<td>未开始</td>
							<td>2017年8月14日</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="glyphicon glyphicon-time blue" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="">完成供应商信息问卷调查（GCM问题）＊<span class="caret"></span></a>
							</td>
							<td><a href="">惠普（北京）<span class="caret"></span></a></td>
							<td>项目所有者</td>
							<td>未开始</td>
							<td></td>
						</tr>
						<tr class="bottom-border">
							<td><span class="glyphicon glyphicon-triangle-right blue" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="glyphicon glyphicon-arrow-right blue" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="">审批<span class="caret"></span></a>
							</td>
							<td></td>
							<td>项目所有者</td>
							<td>进行中</td>
							<td>2017年6月9日</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../other/footer.jsp"%>

</body>
</html>
