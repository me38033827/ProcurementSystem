<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="../other/header1.jsp"%>
<%@ include file="../other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">

		<!-- 主要内容 -->
		<div class="con">
			<!-- <div id="searching-title-out">
				<a class="inline-b black" id="searching-title">查看“用户1”的详细信息</a>
				<button class="btn-w right"
					onclick="window.location.href='user-searching1.html'">完成</button>
			</div> -->
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line4">
					<button class="order-detail-clicked"
						onclick="window.location.href='userDetail?userUniqueName=${user.uniqueName}'">常规</button>
					<button class="order-detail-not-clicked"
						onclick="window.location.href='userDetailGroup?userUniqueName=${user.uniqueName}'">组</button>
					<button class="order-detail-not-clicked">所有组</button>
				</div>

				<div id="order-detail-line2">
					<a class="black">指定用户信息并将该用户分配到组。用 *
						标记的字段是必填字段。输入此个人数据并单击“保存”按钮后，您确认您授权根据 Ariba 隐私声明、贵公司与 Ariba
						之间的服务协议和适用法律，在欧盟或其他辖区以外传送此个人数据。</a>
				</div>

				<div class="inline-b" id="user-detail-tab">
					<table>
						<tr>
							<td id="order-detail-tab-col1">定义者：</td>
							<td id="order-detail-tab-col2">${user.definer}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">类型：</td>
							<td id="order-detail-tab-col2">${user.passwordAdapter}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">用户标识符：</td>
							<td id="order-detail-tab-col2">${user.userIdentifier}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">名称：</td>
							<td id="order-detail-tab-col2">${user.name}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">状态：</td>
							<td id="order-detail-tab-col2">${user.status}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">业务电子邮件地址：</td>
							<td id="order-detail-tab-col2">${user.emailAddress}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">允许外部电子邮件域：</td>
							<td id="order-detail-tab-col2">${user.allowedExternalEmailDomain}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">业务电话号码：</td>
							<td id="order-detail-tab-col2">${user.phone}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">业务传真号码：</td>
							<td id="order-detail-tab-col2">${user.fax}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">区域：</td>
							<td id="order-detail-tab-col2">${user.locale}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">默认货币：</td>
							<td id="order-detail-tab-col2">${user.defaultCurrency}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">时区：</td>
							<td id="order-detail-tab-col2">${user.timeZone}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">上级主管：</td>
							<td id="order-detail-tab-col2">${user.supervisorName}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">备用电子邮件地址：</td>
							<td id="order-detail-tab-col2">${user.alternateEmailAddresses}
							</td>
						</tr>

						<tr>
							<td id="order-detail-tab-col1">创建日期：</td>
							<td id="order-detail-tab-col2">${user.createDate}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">上次修改日期：</td>
							<td id="order-detail-tab-col2">${user.lastModifyDate}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">停用日期：</td>
							<td id="order-detail-tab-col2">${user.expireDate}
							</td>
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


	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
