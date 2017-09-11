﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1return.jsp"%>
<title>供应商详情－概述</title>
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
					<button class="tag-clicked"
						onclick="window.location.href='sqmSummary'">概述</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmDoc'">文档</button>
					<button class="tag-not-clicked"
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
				
				<div class="row">
					<div class="col-md-6">
						<div class="standard-subtitle">概述
							<div class="btn-group right">
								<button class="btn-ma" data-toggle="dropdown">
									操作&nbsp;<span class="caret"></span>
								</button>
								<ul class="dropdown-menu" style="width:200px;">
									<li><a class="manu-active" href="">&nbsp;&nbsp;编辑概述</a></li>
									<li><a class="manu-active" href="" >&nbsp;&nbsp;编辑概要</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;查看详细信息</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;移动</a></li>
									<li><a class="manu-deactive">创建</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;后续项目</a></li>
									<li><a class="manu-deactive">删除</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;删除项目</a></li>
									<li><a class="manu-deactive">显示</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;简要实图</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;添加到受监视的项目中</a></li>
								</ul>
							</div>
						</div>
						<table class="tab-height" id="supplier-crea-tab1" style="margin-left:80px;">
							<tr>
								<td class="col-standard1">工作区标识符：</td>
								<td class="col-standard2">WS100000203</td>
							</tr>
							<tr>
								<td class="col-standard1">供应商：</td>
								<td class="col-standard2">佳能（北京）</td>
							</tr>
							<tr>
								<td class="col-standard1">项目状态：</td>
								<td class="col-standard2">已激活</td>
							</tr>
							<tr>
								<td class="col-standard1">上次资格日期：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">资格失效日期：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">版本：</td>
								<td class="col-standard2">原始</td>
							</tr>
							<tr>
								<td class="col-standard1">过期电子邮件收件人：</td>
								<td class="col-standard2">（无值）</td>
							</tr>
							<tr>
								<td class="col-standard1">开始日期：</td>
								<td class="col-standard2">2017年9月8日</td>
							</tr>
							<tr>
								<td class="col-standard1">截止日期：</td>
								<td class="col-standard2">2017年9月8日</td>
							</tr>
							<tr>
								<td class="col-standard1">所有者：</td>
								<td class="col-standard2">zhangliu</td>
							</tr>
							<tr>
								<td class="col-standard1">测试项目：</td>
								<td class="col-standard2">否</td>
							</tr>
							<tr>
								<td class="col-standard1">商品：</td>
								<td class="col-standard2">打印机
									<a style="margin-left:30px;"class="inline-b f-13" href="">查看更多信息</a>
								</td>
							</tr>
							<tr>
								<td class="col-standard1">访问控制：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">说明：</td>
								<td class="col-standard2"></td>
							</tr>
						</table>
					</div>
					<div class="col-md-6">
						<div class="inline-b tab-height full">
							<div class="inline-b filters full">
								<div class="standard-subtitle">流程
									<div class="btn-group right">
										<a class="f-14"href="">所有任务</a>
									</div>
								</div>
								<div class="adjust-10"></div>
								<a class="grey">此项目中没有阶段</a>
							</div>
						</div>
						
						<div class="adjust-10"></div>
						<div class="adjust-10"></div>
						<div class="adjust-10"></div>
						
						<div class="inline-b tab-height full">
							<div class="inline-b filters full">
								<div class="standard-subtitle">快速链接
									<div class="btn-group right">
										<a class="f-14" href="">所有文档</a>
									</div>
								</div>
								<div class="adjust-10"></div>
								<a class="grey">“快速链接”是通向此项目中的重要文档的途径。要向此区域中添加快速链接，请导航到您要链接到的文档，并从其菜单中选择<b>添加到快速链接。</b></a>
							</div>
						</div>
						
						<div class="adjust-10"></div>
						<div class="adjust-10"></div>
						<div class="adjust-10"></div>
						
						<div class="inline-b tab-height full">
							<div class="inline-b filters full">
								<div class="standard-subtitle">声明
									<div class="btn-group right">
										<a href="" class="f-14">新</a>&nbsp;&nbsp;
										<a href="" class="f-14">详细信息</a>
									</div>
								</div>
								<div class="adjust-10"></div>
								<div>
									<table class="fulltab">
										<tr>
											<td style="width:70%;">
												<a href="">欢迎来到本项目！</a>
											</td>
											<td style="width:30%;">2017年2月22日</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
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