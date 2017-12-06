<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>供应商详情－事件消息</title>
<%@include file="../../other/header1return.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="row">
					<div class="col-md-2">
						<div class="supplier-left-info">
							<div class="supplier-left-info-news">事件</div>
							<div class="supplier-left-info-all">全部</div>
							<div class="supplier-left-info-filter">筛选，按</div>
							<div class="supplier-left-info-tab">
								<table class="fulltab">
									<tr>
										<td style="padding: 5px; width: 40px;"><input
											type="checkbox" id="chk-sup-news1" class="chk" /><label
											for="chk-sup-news1"></label></td>
										<td style="width: 20px;">0</td>
										<td>未读取</td>
									</tr>
									<tr>
										<td style="padding: 5px;"><input type="checkbox"
											id="chk-sup-news2" class="chk" /><label for="chk-sup-news2"></label>
										</td>
										<td>0</td>
										<td>未回应</td>
									</tr>
									<tr>
										<td style="padding: 5px;"><input type="checkbox"
											id="chk-sup-news3" class="chk" /><label for="chk-sup-news3"></label>
										</td>
										<td>0</td>
										<td>最近</td>
									</tr>
									<tr>
										<td style="padding: 5px;"><input type="checkbox"
											id="chk-sup-news4" class="chk" /><label for="chk-sup-news4"></label>
										</td>
										<td>0</td>
										<td>未读取</td>
									</tr>
								</table>
							</div>
						</div>
					</div>


					<div class="col-md-10">
						<%@include file="supplierSQMNav.jsp"%>
						<div class="tag-line">
							<button class="tag-not-clicked"
								onclick="window.location.href='sqmSummary'">概述</button>
							<button class="tag-not-clicked"
								onclick="window.location.href='sqmDoc'">文档</button>
							<button class="tag-not-clicked"
								onclick="window.location.href='sqmTask'">任务</button>
							<button class="tag-not-clicked"
								onclick="window.location.href='sqmTeam'">团队</button>
							<button class="tag-not-clicked"
								onclick="window.location.href='sqmInfo'">信息板</button>
							<button class="tag-clicked"
								onclick="window.location.href='sqmNews'">事件消息</button>
						</div>


						<div class="adjust-10"></div>

						<div class="standard-subtitle">消息</div>

						<div>
							<table class="table table-hover">
								<tr class="standard-row1">
									<td>事件</td>
									<td>从</td>
									<td>联系人姓名</td>
									<td>主题</td>
									<td>标识符</td>
									<td>已发送回复</td>
									<td>发送日期&#8595;</td>
								</tr>
								<tr class="bottom-border">
									<td><a>第一份问卷</a></td>
									<td>Lenovo-test</td>
									<td>zhangliu</td>
									<td><a>事件1第一份问卷由hanliu发布</a></td>
									<td>MSG1000098</td>
									<td>不适用</td>
									<td>2017年9月8日 下午16:16</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<script>
		function back() {
			location.href = "../search/supplierSearchDistribute?page=2006";
		}
	</script>
</body>
</html>
