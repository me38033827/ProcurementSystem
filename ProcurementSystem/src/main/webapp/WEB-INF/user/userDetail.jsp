<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>用户详情界面</title>
		<%@ include file="../other/header.jsp"%>
	</head>
	<!-- 页面整体宽度：1320px -->
	<body>
		<div class="container" id="whole-container">
			
			<!-- 主要内容 -->
			<div class="con">
				<div id="searching-title-out">
					<a class="inline-b black" id="searching-title">查看“用户1”的详细信息</a>
					<button class="btn-w right" onclick="window.location.href='user-searching1.html'">完成</button>
				</div>
				<div class="user-main">
					 <!-- 搜索显示区域 -->
					 <div id="order-detail-line4">
						<button class="order-detail-clicked">常规</button>
						<button class="order-detail-not-clicked">组</button>
						<button class="order-detail-not-clicked">所有组</button>
					 </div>
					
					 <div id="order-detail-line2">
						<a class="black">指定用户信息并将该用户分配到组。用 * 标记的字段是必填字段。输入此个人数据并单击“保存”按钮后，您确认您授权根据 Ariba 隐私声明、贵公司与 Ariba 之间的服务协议和适用法律，在欧盟或其他辖区以外传送此个人数据。</a>
					 </div>
					 
					 <div class="inline-b" id="user-detail-tab">
						<table>
							<tr>
								<td id="order-detail-tab-col1">定义者：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("definer") %>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">类型：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("type") %>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">用户标识符：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("userIdentifierBack")%>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">名称：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("name")%>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">组织：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("organization") %>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">业务电子邮件地址：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("emailAddress")%>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">允许外部电子邮件域：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("allowedExternalEmailDomain")%>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">业务电话号码：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("phone")%>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">业务传真号码：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("fax")%>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">区域：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("locale")%>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">默认货币：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("currency")%>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">时区：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("timeZone")%>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">上级主管：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("supervisorName")%>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">备用电子邮件地址：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("alternateEmailAddress")%>
								</td>
							</tr>
							
							<tr>
								<td id="order-detail-tab-col1">创建日期：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("createDate")%>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">上次修改日期：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("lastModifyDate")%>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">停用日期：
								</td>
								<td id="order-detail-tab-col2"><%=request.getAttribute("expireDate")%>
								</td>
							</tr>
							
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="foot">
			<div class="black f-12 foot-con">Copyright &copy; 2017.Demo. All rights reserved.</div>
		</div>
		

	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	  <!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
	</body>
</html>
