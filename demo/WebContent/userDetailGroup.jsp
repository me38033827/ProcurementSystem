<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>用户详情界面</title>

</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">查看“Liyi”的详细信息</a>
				<button class="btn-w right"
					onclick="window.location.href='userSearchingR.jsp'">完成</button>
			</div>
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line4">
					<button class="order-detail-not-clicked" onclick="window.location.href='userDetail.jsp'">常规</button>
					<button class="order-detail-clicked" onclick="window.location.href='userDetailGroup.jsp'">组</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='userDetailAllGroup.jsp'">所有组</button>
				</div>

				<div id="order-detail-line2">
					<a class="black">这些组已直接分配给此用户。直接分配的组是在其他组或角色之外分配的。</a>
				</div>

				<div>
					<table class="fulltab">
						<tr class="searching-tab-row1">
							<td class="userGroup1">组名称</td>
							<td class="userGroup2">定义者</td>
							<td class="userGroup3">说明</td>
						</tr>
					</table>
				</div>
				<div id="usergroup-tab">
					<table class="fulltab">
						<tr class="searching-tab-row2">
							<td class="userGroup1">财务</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">可将该组的成员添加到请购单、发票核算文档、合同请求、出差授权和开支报告的审批流程中。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">采购代理</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">对收据、请购单、订购单、发票核算文档、合同请求、付款请求文档和里程碑...</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">采购用户</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以：创建请购单；查询采购流程中自己和下属的待批文档...</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">电子表单模版管理员</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以创建新的电子表单模版，以及查看或编辑所有现有的电子表单模版</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">发票编辑员</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以编辑发票和发票核算文档。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">发票录入用户</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以：创建发票，查询自己和下属的发票...</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">费用用户</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以向相应购物卡的未分配费用项目分配相应的费用，以及查看这些费用。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">AP系统</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">负责IR审批。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">审计员</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以通过只读形式访问采购和发票模块。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">移动用户</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以通在移动设备上激活和使用demo应用程序。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">AP管理</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以访问管理工具选项卡上的订单查找...</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">采购商管理员</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以批准或拒绝其他用户的限制项目请求。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">高级用户</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以覆盖采购系统对商品强加的购买限制。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">AP系统</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">负责IR审批。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">审计员</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以通过只读形式访问采购和发票模块。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">移动用户</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以通在移动设备上激活和使用demo应用程序。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">AP管理</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以访问管理工具选项卡上的订单查找...</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">采购商管理员</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以批准或拒绝其他用户的限制项目请求。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">高级用户</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以覆盖采购系统对商品强加的购买限制。</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="userGroup1">采购系统</td>
							<td class="userGroup2">系统</td>
							<td class="userGroup3">该组的成员可以设置账户、为特定产品类别创建限制并将限制应用到特定用户。</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="foot">
		<div class="black f-12 foot-con">Copyright &copy; 2017.Demo. All
			rights reserved.</div>
	</div>



</body>
</html>
