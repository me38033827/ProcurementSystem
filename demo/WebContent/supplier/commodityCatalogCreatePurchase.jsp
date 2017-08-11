<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创建标准-订购</title>
<%@include file="../other/supplierHeader1.jsp"%>
<%@include file="../other/supplierHeader2.jsp"%>
</head>
<body>
	<div class="container">
		<div id="order-detail-main">
			<div class="standard-title">
				<a class="standard-title-main">创建新目录</a>
				<div class="standard-title-r">
					<button class="btn-w">上一步</button>
					<button class="btn-w">下一步</button>
					<button class="btn-w">退出</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<div id="order-detail-main">
					<div class="commodity-catalog-edit-left left blue">
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"
							onclick="window.location.href='commodityCatalogCreateDetail.jsp'">1
							详细信息</button>

						<button id="commodity-catalog-edit-left-clicked"
							onclick="window.location.href='commodityCatalogCreatePurchase.jsp'">2
							订购</button>
						<button id="commodity-catalog-edit-left-not-clicked"
							onclick="window.location.href='commodityCatalogCreateContent.jsp'">3
							内容</button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
					</div>
				</div>
			</div>


			<div class="col-md-10">
				<div class="container-padding">
					<div>添加目录并设置目录对这些客户的可见性。单击客户名称可以查看客户网站的验证规则。</div>
					<div>您可以通过电子邮件接收目录状态更新（包括目录错误）。要接收电子邮件，请单击管理概要，然后在“电子邮件通知”区域中输入邮件地址。</div>
					<br />


					<div>
						<table class="table">
							<tr>
								<td>可见性：</td>
								<td><div>
										<label><input type="radio" name="radio1" checked></label><strong>
											保密</strong>-只有与您具有合作关系的选定客户才能查看和接收目录
									</div>
									<div>
										<label><input type="radio" name="radio1"></label><strong>
											公开</strong>-所有客户都能查看目录。与您具有合作关系的客户还可以接收发布的目录
									</div></td>
							</tr>
						</table>
					</div>
					<br />
					<div class="standard-title-main">客户</div>
					<table class="table table-hover">
						<tr class="standard-row1">
							<th><input type="checkbox" /></th>
							<th>客户&#8593;</th>
							<th>目录验证规则</th>
							<th>版本1的验证状态</th>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>Lenovo</td>
							<td><a>查看</a></td>
							<td>等待验证</td>
						</tr>
					</table>

					<div class="table-bottom-btn right">
						<button class="btn-w">上一步</button>
						<button class="btn-w">下一步</button>
						<button class="btn-w">退出</button>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>