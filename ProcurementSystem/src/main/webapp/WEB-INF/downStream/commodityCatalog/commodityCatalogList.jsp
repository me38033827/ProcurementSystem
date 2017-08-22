<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../../other/header1.jsp"%>
<%@ include file="../../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
	<!-- 第一行 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding">
					<div class="page-main-title">目录</div>

					<div class="margin-bottom">
						请复查目录列表，并采取相应的操作；例如，导入新目录、处理现有目录或比较目录版本。<br>
						<div class="margin-bottom right">
							<button class="btn-b"
								onclick="window.location.href='commodityCatalogCreate'">导入新目录</button>
							<button class="btn-w" style="width: 120px">导入供应商徽标</button>
						</div>
						<br>

					</div>

					<div class="bg-grey container-text contaienr margin-bottom">
						<form action="commodityCatalogListSearch" method="get">
							<div>
								<strong>搜索筛选器：</strong>
							</div>
							<div>
								搜索范围： <select id="my-select" name="state">
									<option value="全部">全部</option>
									<option value="">正在验证</option>
									<option value="">已验证</option>
									<option value="">正在等待审批</option>
									<option value="">已批准</option>
									<option value="已激活">已激活</option>
									<option value="已停用">已停用</option>
									<option value="">Activating</option>
									<option value="">Deactivating</option>
								</select> &nbsp;搜索内容： <input type="text" class=" border-g ">

								<div class="right">
									<button class="btn-b" type="submit">搜索</button>
									<button class="btn-w" onclick="window.location.href='commodityCatalogListSearch">全部列出</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!--第二行  -->
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding">
					<table class="table table-hover">
						<tr class="standard-row1">
							<th width="5%"></th>
							<th width="10%">源供应商</th>
							<th width="15%">目录订阅名称</th>
							<th width="5%">版本</th>
							<th width="10%">加载模式</th>
							<th width="10%">内容摘要</th>
							<th width="5%">预览</th>
							<th width="5%">状态</th>
							<th width="10%">项目数量</th>
							<th width="25%">上次修改时间</th>
						</tr>
					</table>
					<div id="sourcing-tab" style="border-bottom: 2px solid #ddd">
						<table class="table table-hover">
							<c:forEach items="${ requestScope.commodityCatalogs}"
								var="commodityCatalog">
								<tr>
									<td width="5%"><input type="checkbox"
										id=${commodityCatalog.uniqueName }
										class="chk" /><label
										for=${commodityCatalog.uniqueName}></label></td>
									<td width="10%"><a> ${commodityCatalog.supplier.name}
									</a></td>
									<td width="15%"><a>${commodityCatalog.name } </a></td>
									<td width="5%"><a href="showCommodityCatalogContent?uniqueName=${commodityCatalog.uniqueName }">${commodityCatalog.version }</a></td>
									<td width="10%">${commodityCatalog.loadMode }</td>
									<td width="10%">${commodityCatalog.contentAbstract }</td>
									<td width="5%">${commodityCatalog.preview}</td>
									<td width="5%"><a> ${commodityCatalog.isActivated } </a></td>
									<td width="10%"><a>${commodityCatalog.itemCount}</a></td>
									<td width="25%">${commodityCatalog.lastModifyDate }</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="table-bottom-btn">
						<button class="btn-w">比较版本</button>
						<button class="btn-w">发送进行审批</button>
						<button class="btn-w">激活</button>
						<button class="btn-w">停用</button>
						<button class="btn-w">删除版本</button>
						<button class="btn-w">删除订阅</button>
						<button class="btn-w">预览</button>
						<button class="btn-w">删除预览</button>
						<button class="btn-w">强行批准</button>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>