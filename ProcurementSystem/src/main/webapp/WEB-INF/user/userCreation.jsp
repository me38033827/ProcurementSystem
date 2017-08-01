<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>用户创建界面</title>
		<%@ include file="../other/header.jsp"%>
	</head>
	<!-- 页面整体宽度：1320px -->
	<body>
		<div class="container" id="whole-container">
			<!-- 主要内容 -->
			<div class="con">
				<div id="searching-title-out">
					<a class="inline-b black" id="searching-title">用户－创建用户</a>
					<div class="right">
						<button class="btn-b">保存</button>
						<button class="btn-w" onclick="window.location.href='user-searching1.html'">取消</button>
					</div>
				</div>
				<div class="user-main">
					 <!-- 搜索显示区域 -->
					 <div id="order-detail-line4">
						<button class="order-detail-clicked">常规</button>
						<button class="order-detail-not-clicked">组</button>
						<button class="order-detail-not-clicked">所有组</button>
					 </div>
					
					 <div id="order-detail-line2">
						<a class="black">带星号 (*) 的字段为必填字段。输入个人数据并单击“保存”按钮。</a>
					 </div>
					 
					 <div class="inline-b" id="user-detail-tab">
						<table>
							<tr>
								<td id="order-detail-tab-col1">＊定义者：
								</td>
								<td id="order-detail-tab-col2">
									<select id="my-select">
										<option>管理者</option>
										<option>外部</option>
										<option>手工维护</option>
									</select>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">类型：
								</td>
								<td id="order-detail-tab-col2">
									<select id="my-select">
										<option>企业用户</option>
										<option>第三方企业用户</option>
									</select>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">＊用户标识符：
								</td>
								<td id="order-detail-tab-col2"><input class="form-control input" id="userIdentifier"/>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">＊名称：
								</td>
								<td id="order-detail-tab-col2"><input class="form-control input" id="userName"/>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">＊组织：
								</td>
								<td id="order-detail-tab-col2">
									<select id="my-select">
										<option>测试组</option>
									</select>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">＊业务电子邮件地址：
								</td>
								<td id="order-detail-tab-col2"><input class="form-control input" id="emailAddress"/>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">允许外部电子邮件域：
								</td>
								<td id="order-detail-tab-col2"><input class="form-control input" id="allowExternalEmailDomain"/>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">业务电话号码：
								</td>
								<td id="order-detail-tab-col2"><input class="form-control input" id="phone"/>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">业务传真号码：
								</td>
								<td id="order-detail-tab-col2"><input class="form-control input" id="fax"/>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">区域：
								</td>
								<td id="order-detail-tab-col2">
									<select id="my-select">
										<option>中文－中国大陆</option>
									</select>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">默认货币：
								</td>
								<td id="order-detail-tab-col2">
									<select id="my-select">
										<option>人民币</option>
									</select>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">时区：
								</td>
								<td id="order-detail-tab-col2">
									<select id="my-select">
										<option>中国</option>
									</select>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">＊上级主管：
								</td>
								<td id="order-detail-tab-col2"><input class="form-control input" id="supervisorName"/>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">备用电子邮件地址：
								</td>
								<td id="order-detail-tab-col2"><input class="form-control input"/>
								</td>
							</tr>
						</table>
					</div>
					
					<div>
						<a class="black f-12">带星号 (*) 的字段为必填字段。输入个人数据并单击“保存”按钮。</a>
					</div>
					<div class="choice">
						<div class="right">
							<button class="btn-b" id="userCreationSubmit" onclick="window.location.href='userCreation'">保存</button>
							<button class="btn-w" onclick="window.location.href='user-searching1.html'">取消</button>
						</div>
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
	
	<script>
		/*$("#userCreationSubmit").click(function(){
			var userIdentifier = $("#userIdentifier").val();
	
			$.ajax({
				type:"POST",
				url:"userCreation.submit",
				data:{"userIdentifier":userIdentifier}
				
			})
			
			
			
			
			alert("User Identifier cannot be empty!");
			
		});
	*/
	</script>
	</body>
</html>
