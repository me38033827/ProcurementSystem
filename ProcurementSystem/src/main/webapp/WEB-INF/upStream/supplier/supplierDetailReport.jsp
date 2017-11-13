<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1return.jsp"%>
<title>供应商详情－报告</title>
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
					<button class="tag-clicked"
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
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailHistory'">历史记录</button>
				</div>
				
				<div class="standard-title" style="border:0;">
					<div class="standard-title-main">供应商360</div>
					<div class="standard-title-r">
						<a href=""><span class="glyphicon glyphicon-share" aria-hidden="true"></span>&nbsp;发送至设备</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href=""><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;发送至电子邮件</a>&nbsp;&nbsp;&nbsp;
						<button class="btn-w">保存</button>
						<button class="btn-w">设置为建议值</button>
						<button class="btn-w">选择报告</button>
					</div>
				</div>
				
				<div class="title-description" style="padding-bottom:0;padding-top:0;"><span class="glyphicon glyphicon-warning-sign" style="color:orange;" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;
					目前正在加载数据，因此报告运行会比较慢。
				</div>
				
	
				<div id="supplier-detail-report-box">
					<a class="black"><span class="glyphicon glyphicon-triangle-bottom black f-12" aria-hidden="true"></span>&nbsp;
								&nbsp;应用的筛选器</a><br>
					<a>&nbsp;&nbsp;&nbsp;供应商（普通组织）<span class="caret"></span></a>：&nbsp;惠普（北京）
				</div>
				
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				
				<div class="row">
					<div class="col-md-6">
						<div class="standard-subtitle">强化型供应商父公司商品分析
						</div>
						<div class="report-center-description">您未获得访问此报告的授权。
						</div>
						<div class="adjust-10"></div>
						
						<div class="standard-subtitle">图表/表
						</div>
						<div class="report-center-description">未选择报告。应删除该项目。
						</div>
						<div class="adjust-10"></div>
						
						<div class="standard-subtitle">参与事件列表
						</div>
						<div class="report-center-description">没有可用数据。
						</div>
						<div class="report-center-link"><a href="">单击此区域可查看完整分析。</a>
						</div>
						<div class="adjust-10"></div>
						
						<div class="standard-subtitle">采购项目供应商报告
						</div>
						<div class="report-center-description">没有可用数据。
						</div>
						<div class="report-center-link"><a href="">单击此区域可查看完整分析。</a>
						</div>
						<div class="adjust-10"></div>
					</div>
					<div class="col-md-6">
						
						<div class="standard-subtitle">供应商绩效趋势报告
						</div>
						<div class="report-center-description">没有符合您所选条件的记录。 
						</div>
						<div class="report-center-link"><a href="">单击此区域可查看完整分析。</a>
						</div>
						
						<div class="adjust-10"></div>
						
						<div class="standard-subtitle">供应绩效管理项目列表
						</div>
						<div class="adjust-10"></div>
						<table class="table table-hover">
							<tr class="standard-row1">
								<td>项目名称</td>
								<td>所有者（用户）</td>
								<td>开始日期</td>
								<td>状态</td>
								<td>项目计数</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td><b>2</b></td>
							</tr>
							<tr>
								<td>YH供应商绩效管理项目</td>
								<td>Chen dingxuan</td>
								<td>2017年5月23日</td>
								<td>灰色</td>
								<td>1</td>
							</tr>
							<tr class="bottom-border">
								<td>无标题供应商绩效管理项目</td>
								<td>Chen dingxuan</td>
								<td>2017年5月27日</td>
								<td>灰色</td>
								<td>1</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="adjust-10"></div>
				<div class="row">
					<div class="col-md-12">
						<div class="standard-subtitle">供应商近期评分卡
						</div>
						
						<div class="row">
							<div class="col-md-12">
								<a class="f-13" href="">单击此处可查看完整分析。</a>
								<div id="report-border">
									<button class="btn-b" style="width:190px;">聚合视图：平均分数&nbsp;<span class="caret"></span></button>
									<button class="btn-w right">评分卡&nbsp;<span class="caret"></span></button>
								</div>
								
								<table class="table table-hover">
									<tr class="standard-row1">
										<td style="width:40%;">KPI区段&#8593;</td>
										<td style="width:40%;">KPI</td>
										<td style="width:10%;">最佳实践计分卡</td>
										<td style="width:10%;">总计平均分数</td>
									</tr>
									<tr>
										<td colspan="4">总计</td>
									</tr>
									<tr>
										<td><b>账户管理和客户服务</b></td>
										<td><b>小计</b></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td>账户管理和客户服务（自身）</td>
										<td></td>
									</tr>
									<tr>
										<td><b>履行合同</b></td>
										<td><b>小计</b></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td>履行合同（自身）</td>
										<td></td>
									</tr>
									<tr>
										<td><b>财务和定价管理</b></td>
										<td><b>小计</b></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td>财务和定价管理（自身）</td>
										<td></td>
									</tr>
									<tr>
										<td><b>创新和技术</b></td>
										<td><b>小计</b></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td>创新和技术（自身）</td>
										<td></td>
									</tr>
									<tr>
										<td><b>质量</b></td>
										<td><b>小计</b></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td>质量（自身）</td>
										<td></td>
									</tr>
									<tr>
										<td><b>社会责任和可持续性发展</b></td>
										<td><b>小计</b></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td>社会责任和可持续性发展（自身）</td>
										<td></td>
									</tr>
									<tr>
										<td><b>供应商部分</b></td>
										<td><b>小计</b></td>
										<td></td>
									</tr>
									<tr class="bottom-border">
										<td></td>
										<td>供应商部分（自身）</td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
						</div>
						<div class="adjust-10"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../other/footer.jsp"%>
		<script>
			function back(){
				location.href="../search/supplierSearchDistribute?page=2004";
			}
		</script>
</body>
</html>
