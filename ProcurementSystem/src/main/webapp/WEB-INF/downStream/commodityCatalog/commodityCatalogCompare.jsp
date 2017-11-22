<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="../../other/header1.jsp"%>
<%@include file="../../other/header2.jsp"%>

</head>
<body>
	<!-- 第一行 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding">
					<div class="border-bottom-grey margin-bottom">
						<div class="right">
							<button class="btn-w" type="button"
								onclick="window.location.href='commodityCatalogList'">目录
								主页</button>
						</div>
						<div class="small-window-title margin-bottom ">目录 - 比较版本 -
							catalog for test</div>

					</div>
					<div class="margin-bottom">
						<span> <a
							href="showCommodityCatalogContent?uniqueName=${uniqueName }">步骤1.清理数据</a>
						</span> &nbsp;&nbsp;> &nbsp;&nbsp;<span
							class="caution-div container-text border-blue"> <a
							href="#">步骤2.分析数据</a>
						</span> &nbsp;&nbsp;> &nbsp;&nbsp;<span> <a
							href="commodityCatalogActivate?uniqueName=${uniqueName}">步骤3.生效</a>
						</span>
					</div>

					<div class="margin-bottom">
						<div>
							<strong>工具：</strong> <a><img
								src="/ProcurementSystem/images/icon-compare.png"
								class="img-icon icon-choose" title="纠错工具" /></a> <a><img
								src="/ProcurementSystem/images/icon-view.png" class="img-icon"
								title="纠错工具" /></a>
						</div>
					</div>
					<div>请选择同一目录的两个版本，对更改进行直接比较。请选择要“针对其进行比较”的旧版本和进行“比较”的新版本。</div>
					<div>
						<table class="commodity-catalog-compare-table">
							<tr>
								<td class="right">选择要比较的版本:</td>
								<td><select id="my-select">
										<option>版本5 - 当前查看的版本</option>
								</select></td>
							</tr>
							<tr>
								<td class="right">选择要对照比较的版本:</td>
								<td><select id="my-select">
										<option>所有活动的项目</option>
								</select></td>
							</tr>
							<tr>
								<td class="right">单列出具有 ％ 的<select id="my-select"><option>价格上升幅度超过</option>
										<option>价格下降幅度超过</option>
										<option>价格变化幅度超过</option>
								</select>:
								</td>
								<td><input class="input" style="width: 30px;">项目</td>
							</tr>
						</table>
					</div>
					<div class="border-bottom-grey margin-bottom">
						<button class="btn-w">比较</button>
						<br> <br>
					</div>
					<div class="right">
						<button class="btn-w" type="button"
							onclick="window.location.href='commodityCatalogList'">目录
							主页</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>