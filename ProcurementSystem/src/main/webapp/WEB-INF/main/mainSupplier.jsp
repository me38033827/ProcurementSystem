<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<%@include file="../other/header1.jsp"%>
<!-- <script>
	function checkSearchContent(){
		var content = $("#content").val();
		if(content=="使用名称、标识符或任何其他词语搜索"){
			alert(1);
			window.location.href="/ProcurementSystem/buyer/supplier/supplierInitial";
		}else{
			location.href="supplier/supplierSearch";
		}
	}
</script> -->
</head>
<!-- 页面整体宽度：1320px -->
<body class="a-dashbrd-page-bg">
	<div class="content">
		<div class="container" id="secondline-out" style="width:100%">
			<div class="dropdown" id="secondline-dropdown">
				<!-- 第二行靠左 -->
				<button class="secondline-left" onclick="window.location.href='main'">主页</button>
				<button class="secondline-left">寻源</button>
				<button class="secondline-left">合同</button>
				<button class="secondline-left">采购</button>
				<button class="secondline-left">开发票</button>
				<button class="secondline-left header-clicked">供应商</button>
				<button class="secondline-left">目录</button>
				</div>
			<%@include file="../other/header2r.jsp"%>
		</div>
	
		<!-- 导航栏 第三行 -->
		<div id="thirdline-out" style="background-color: transparent;">
	
			<div class="col-md-2 inline-b left" id="search-service"
				style="postion: relative; left: 20px;">
				<select class="col-md-12">
					<option>供应商和客户</option>
				</select>
	
			</div>
			<!-- 第三行搜索框 -->
			<div style="position: relative; left: 20px;">
				<form method="post" action="supplier/supplierInitial">
				<input type="text" id="content" class="inline-b border-g left col-md-4"
					value="使用名称、标识符或任何其他词语搜索"
					onfocus="if(this.value=='使用名称、标识符或任何其他词语搜索') this.value=''"
					onblur="if(this.value=='')this.value='使用名称、标识符或任何其他词语搜索' "
					style="top: 0px;">
				<button class="btn btn-default inline-b border-g left"
					id="search-btn" style="top: 0px;">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				</button>
				</form>
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
	
	
		<!--主要内容  -->
		<div class="container">
			<!-- 第一行内容 -->
			<div class="row">
				<div class="col-md-2">
					<div class="module-left">
						<div class="module-head">通用操作</div>
	
						<div class="module">
							<div class="div-padding-left">
								<table class="table-left">
									<tr>
										<th>创建</th>
									</tr>
									<tr>
										<td><a class="secondline-right" href="">供应商调查提案请求</a></td>
									</tr>
									<tr>
										<td><a class="secondline-right" href="">供应商绩效管理项目</a></td>
									</tr>
									<tr>
										<td><a class="secondline-right" href="">寻源项目</a></td>
									</tr>
									<tr>
										<td><a class="secondline-right" href="">请购单</a></td>
									</tr>
									<tr>
										<td><a class="secondline-right" href="">更多<span class="caret"></span></a></td>
									</tr>
								</table>
								<table class="table-left">
									<tr>
										<th>管理</th>
									</tr>
									<tr>
										<td><a class="secondline-right" href="">核心管理</a></td>
									</tr>
									<tr>
										<td><a class="secondline-right" href="">管理</a></td>
									</tr>
									<tr>
										<td><a class="secondline-right" href="">我的任务</a></td>
									</tr>
									<tr>
										<td><a class="secondline-right" href="">更多<span class="caret"></span></a></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					
					<div class="module-left">
						<div class="module-head">最近查看的内容</div>
						<div class="module">
							<div class="div-padding-left">
								<table>
									<tr>
										<td><a href=''>惠普（北京）</a></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-10">
					<div>
						<div style="clear: left">
							<div class="module-head">通知</div>
							<div class="module">
								<div class="div-padding-left">
									<table class="table table-hover">
										<tr>
											<th>发件人</th>
											<th>主题</th>
											<th style="text-align:right;">接收时间</th>
										</tr>
										<tr>
											<td>系统</td>
											<td><a href="#">组织“佳能（中国）”的概要已更新。</a></td>
											<td style="text-align:right;">2017年5月12日 17:55</td>
										</tr>
										<tr>
											<td>系统</td>
											<td><a href="#">组织“联想（北京）”的概要已更新。</a></td>
											<td style="text-align:right;">2017年4月2日 14:23</td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td style="text-align:right;"><a href="">更多…</a></td>
										</tr>
									</table>
								</div>
							</div>
							
							<div class="module-head">供应商绩效管理报告</div>
							<div class="module">
								<div class="div-padding-left roll-tab" style="max-height:260px;">
									<table class="table table-hover">
										<tr>
											<td style="width:16px;padding-top:9px;"><span class="glyphicon glyphicon-file blue" aria-hidden="true"></span>
											</td>
											<td><a href="#">供应商供应绩效管理报告</a></td>
										</tr>
										<tr>
											<td style="width:16px;padding-top:9px;"><span class="glyphicon glyphicon-file blue" aria-hidden="true"></span>
											</td>
											<td><a href="#">供应商绩效趋势报告</a></td>
										</tr>
										<tr>
											<td style="width:16px;padding-top:9px;"><span class="glyphicon glyphicon-file blue" aria-hidden="true"></span>
											</td>
											<td><a href="#">供应商近期评分卡</a></td>
										</tr>
										<tr>
											<td style="width:16px;padding-top:9px;"><span class="glyphicon glyphicon-file blue" aria-hidden="true"></span>
											</td>
											<td><a href="#">供应商绩效管理项目列表</a></td>
										</tr>
										<tr>
											<td style="width:16px;padding-top:9px;"><span class="glyphicon glyphicon-file blue" aria-hidden="true"></span>
											</td>
											<td><a href="#">供应商绩效管理项目报告</a></td>
										</tr>
										<tr>
											<td style="width:16px;padding-top:9px;"><span class="glyphicon glyphicon-file blue" aria-hidden="true"></span>
											</td>
											<td><a href="#">定性调查报告</a></td>
										</tr>
										<tr>
											<td style="width:16px;padding-top:9px;"><span class="glyphicon glyphicon-file blue" aria-hidden="true"></span>
											</td>
											<td><a href="#">定量调查报告</a></td>
										</tr>
										<tr>
											<td style="width:16px;padding-top:9px;"><span class="glyphicon glyphicon-file blue" aria-hidden="true"></span>
											</td>
											<td><a href="#">计划管理报告</a></td>
										</tr>
										<tr>
											<td style="width:16px;padding-top:9px;"><span class="glyphicon glyphicon-file blue" aria-hidden="true"></span>
											</td>
											<td><a href="#">趋势（按商品）</a></td>
										</tr>
										
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../other/footer.jsp"%>

</body>
</html>
