<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>供应商详情－历史记录</title>
<%@include file="../../other/header1return.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<%@include file="supplierDetailNav.jsp"%>
				<div class="tag-line">
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailSummary'">概述</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetail'">概要</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailReport'">报告</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailDoc'">文档</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailTask'">任务</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailTeam'">团队</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailInfo'">信息板</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailNews'">事件消息</button>
					<button class="tag-clicked"
						onclick="window.location.href='supplierDetailHistory'">历史记录</button>
				</div>


				<div class="adjust-10"></div>

				<div class="searching-filter">
					<div class="filter-title">
						<a class="filter-title-main">搜索筛选器（所有）</a> <a class="right f-12">搜索选项<span
							class="caret"></span></a>
					</div>
					<div class="row searching-content">
						<div class="col-md-6">
							<table class="tab-left-space">
								<tr class="row-standard">
									<td class="col-standard1">时间戳：</td>
									<td class="col-standard2"><select>
											<option>无选择</option>
											<option>今天</option>
											<option>昨天</option>
											<option>本周</option>
											<option>上周</option>
											<option>本月</option>
											<option>上月</option>
											<option>本季度</option>
											<option>上季度</option>
											<option>今年</option>
											<option>去年</option>
											<option>自定义</option>
									</select></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">类型：</td>
									<td class="col-standard2"><select>
											<option>无选择</option>
											<option>文档</option>
											<option>工作区</option>
											<option>任务</option>
											<option>团队</option>
											<option>文件夹</option>
											<option>条款</option>
											<option>概要</option>
											<option>阶段</option>
											<option>链接的合同文档</option>
									</select></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">用户：</td>
									<td class="col-standard2">[&nbsp;<a href="">选择</a>&nbsp;]
									</td>
								</tr>
							</table>
						</div>
						<div class="col-md-6">
							<table class="tab-left-space">
								<tr class="row-standard">
									<td class="col-standard1">标题：</td>
									<td class="col-standard2"><input
										class="form-control input" style="width: 240px;" /></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">概述字段名称：</td>
									<td class="col-standard2"><select>
											<option>无选择</option>
									</select></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">合同属性：</td>
									<td class="col-standard2"><select>
											<option>无选择</option>
									</select></td>
								</tr>
							</table>
						</div>
					</div>
					<div class="searching-ending">
						<div align="right">
							<button class="btn-b">搜索</button>
							<button class="btn-w">重置</button>
						</div>
					</div>
				</div>

				<div class="adjust-10"></div>
				<div class="adjust-10"></div>

				<div class="standard-subtitle">
					搜索结果
					<div class="right">
						<button class="icon-btn">
							<span class="glyphicon glyphicon-th icon" aria-hidden="true"></span>
						</button>
						<a class="grey inline-b">|</a>
						<button class="icon-btn">
							<span class="glyphicon glyphicon-chevron-down icon"
								aria-hidden="true"></span>
						</button>
					</div>
				</div>

				<div class="adjust-10"></div>

				<div>
					<table class="table table-hover">
						<tr class="standard-row1">
							<td style="width: 20%;">时间戳&#8595;</td>
							<td style="width: 10%;">用户</td>
							<td style="width: 10%;">类型</td>
							<td style="width: 40%;">标题</td>
							<td style="width: 20%;">详细信息</td>
						</tr>
					</table>
				</div>
				<div class="roll-tab bottom-border" style="max-height: 200px;">
					<table class="table table-hover">
						<tr>
							<td style="width: 20%;">2017年8月15日 14:39</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">工作区</td>
							<td style="width: 40%;">${supplier.name }</td>
							<td style="width: 20%;"><a>已编辑</a></td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 14:39</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">任务</td>
							<td style="width: 40%;"><a>通知供应商完成问卷调查</a></td>
							<td style="width: 20%;"><a>已编辑</a></td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 14:39</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">任务</td>
							<td style="width: 40%;"><a>PSC检查CPL或DPL清单</a></td>
							<td style="width: 20%;"><a>已编辑</a></td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 14:39</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">阶段</td>
							<td style="width: 40%;"><a>PSC运行</a></td>
							<td style="width: 20%;">已更改状态</td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 14:39</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">阶段</td>
							<td style="width: 40%;">${supplier.name }</td>
							<td style="width: 20%;">已更改状态</td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 14:39</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">工作区</td>
							<td style="width: 40%;">${supplier.name }</td>
							<td style="width: 20%;">已编辑</td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 14:28</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">工作区</td>
							<td style="width: 40%;">${supplier.name }</td>
							<td style="width: 20%;"><a>已编辑</a></td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 14:28</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">任务</td>
							<td style="width: 40%;"><a>通知供应商完成问卷调查</a></td>
							<td style="width: 20%;"><a>已编辑</a></td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 14:28</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">任务</td>
							<td style="width: 40%;"><a>PSC检查CPL或DPL清单</a></td>
							<td style="width: 20%;"><a>已编辑</a></td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 14:28</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">阶段</td>
							<td style="width: 40%;"><a>PSC运行</a></td>
							<td style="width: 20%;">已更改状态</td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 14:28</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">阶段</td>
							<td style="width: 40%;">${supplier.name }</td>
							<td style="width: 20%;">已更改状态</td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 14:28</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">工作区</td>
							<td style="width: 40%;">${supplier.name }</td>
							<td style="width: 20%;">已编辑</td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 11:07</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">工作区</td>
							<td style="width: 40%;">${supplier.name }</td>
							<td style="width: 20%;"><a>已编辑</a></td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 11:07</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">任务</td>
							<td style="width: 40%;"><a>通知供应商完成问卷调查</a></td>
							<td style="width: 20%;"><a>已编辑</a></td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 11:07</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">任务</td>
							<td style="width: 40%;"><a>PSC检查CPL或DPL清单</a></td>
							<td style="width: 20%;"><a>已编辑</a></td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 11:07</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">阶段</td>
							<td style="width: 40%;"><a>PSC运行</a></td>
							<td style="width: 20%;">已更改状态</td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 11:07</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">阶段</td>
							<td style="width: 40%;">${supplier.name }</td>
							<td style="width: 20%;">已更改状态</td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月15日 11:07</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">工作区</td>
							<td style="width: 40%;">${supplier.name }</td>
							<td style="width: 20%;">已编辑</td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月10日 10:34</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">工作区</td>
							<td style="width: 40%;">${supplier.name }</td>
							<td style="width: 20%;"><a>已编辑</a></td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月10日 10:34</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">任务</td>
							<td style="width: 40%;"><a>通知供应商完成问卷调查</a></td>
							<td style="width: 20%;"><a>已编辑</a></td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月10日 10:34</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">任务</td>
							<td style="width: 40%;"><a>PSC检查CPL或DPL清单</a></td>
							<td style="width: 20%;"><a>已编辑</a></td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月10日 10:34</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">阶段</td>
							<td style="width: 40%;"><a>PSC运行</a></td>
							<td style="width: 20%;">已更改状态</td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月10日 10:34</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">阶段</td>
							<td style="width: 40%;">${supplier.name }</td>
							<td style="width: 20%;">已更改状态</td>
						</tr>
						<tr>
							<td style="width: 20%;">2017年8月10日 10:34</td>
							<td style="width: 10%;">（无值）</td>
							<td style="width: 10%;">工作区</td>
							<td style="width: 40%;">${supplier.name }</td>
							<td style="width: 20%;">已编辑</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<script>
		function back() {
			location.href = "../search/supplierSearchDistribute?page=2004";
		}
	</script>
</body>
</html>
