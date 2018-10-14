<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ariba Sourcing 创建账户</title>
<%@ include file="../other/header1.jsp"%>
<%@ include file="../other/header2.jsp"%>

</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">
		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<h3 class="inline-b black">创建账户</h3>
				<div class="right">
					<button class="btn-b" onclick="creationSubmit()">创建并继续</button>
					<button class="btn-w"
						onclick="window.location.href='userSearching.html'">取消</button>
				</div>
				<br>
				<a class="black">首先，创建SAP Ariba供应商账户，然后完成 CSI SOLAR POWER (CHINA) INC - TEST 要求的调查问卷。</a>
			</div>
			
			<div id="searching-title-out">
				<h3 class="inline-b black">公司信息</h3>
			</div>
			
			<div class="user-main">
				<a class="right black f-12" style="color:#A3A1A1;">＊ 表示必填字段</a>
				
				<form  id="creationForm" action="buyer/supplier/supplierCreationInfo" method="post">
					<div class="inline-b" id="user-detail-tab">
						<table>
							<tr>
								<td id="order-detail-tab-col1">公司名称：＊</td>
								<td id="order-detail-tab-col2">
									<input class="form-control input" id="companyName" name="companyName" />
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">国家/地区：＊</td>
								<td id="order-detail-tab-col2">
									<select id="countrySelect" name="region">
											<option>中国 [CHN]</option>
									</select></td>
								<td style="color:#A3A1A1;">
									如果贵公司拥有多个办事处，请输入主要办事处地址。您可稍后在公司概要中输入更多地址，例如送货地址、账单寄送地址或其他地址。</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">邮政编码：＊</td>
								<td id="order-detail-tab-col2">
									<input class="form-control input" id="zipcode" name="zipcode" /></td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">州/省：</td>
								<td id="order-detail-tab-col2"><input
									class="form-control input" id="state" name="state" /></td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">城市：＊</td>
								<td id="order-detail-tab-col2"><input
									class="form-control input" id="city" name="city" /></td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">地址：＊</td>
								<td id="order-detail-tab-col2"><input
									class="form-control input" id="district" name="district" /></td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1"></td>
								<td id="order-detail-tab-col2"><input
									class="form-control input" id="number" name="number" /></td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1"></td>
								<td id="order-detail-tab-col2"><input
									class="form-control input" id="street" name="street" /></td>
							</tr>
						<!-- </table>
					</div>
				</form>
			</div>	
			
			<div id="searching-title-out">
				<h3 class="inline-b black">用户账户信息</h3>
			</div>
			
			<div class="user-main">
				<a class="right black f-12" style="color:#A3A1A1;">＊ 表示必填字段</a>
				
				<form  action="buyer/supplier/supplierCreationQuestionnaire" method="post">
					<div class="inline-b" id="user-detail-tab">
						<table> -->
							<tr>
								<td id="order-detail-tab-col1" >姓名：＊</td>
								<td colspan="2">
									<input class="form-control input" id="lastname" name="lastname" placeholder="姓" style="width:8%; display:inline;"/> 								
									<input class="form-control input" id="firstname" name="firstname" placeholder="名" style="width:8%; display:inline;"/>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">电子邮件：＊</td>
								<td id="order-detail-tab-col2"><input
									class="form-control input" id="userEmail" name="userEmail" /></td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1"></td>
								<td id="order-detail-tab-col2"><input
									type="checkbox" id="useEmailAsUsername" name="useEmailAsUsername" />&nbsp;将电子邮件用作用户名</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">用户名：＊</td>
								<td id="order-detail-tab-col2"><input
									class="form-control input" id="username" name="username" /></td>
								<td style="color:#A3A1A1;">必须是电子邮件格式（例如 john@newco.com）</td>
							</tr>
								<tr>
								<td id="order-detail-tab-col1">登录密码：＊</td>
								<td id="order-detail-tab-col2"><input type="password"
									class="form-control input" id="password" name="password" /></td>
								<td style="color:#A3A1A1;">必须至少包含8个字符（包括字母和数字）。</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">确认密码：＊</td>
								<td id="order-detail-tab-col2"><input type="password"
									class="form-control input" id="passwordConfirm" /></td>
								<td id="order-detail-tab-col3">
									<span id="pw_warning" style="color:red;display:none;">&nbsp;&nbsp;两次密码不一致</span>
									<span id="pw_success" style="color:green;display:none;">&nbsp;&nbsp;√两次密码一致</span>
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">语言：</td>
								<td id="order-detail-tab-col2">
									<select id="my-select">
											<option>简体中文</option>
									</select></td>
								<td style="width:75%; color:#A3A1A1;">
									Ariba 向您发送可配置的通知时所使用的语言。这不同于您的 Web 浏览器的语言设置 - 其目的是控制用户界面和您发起的行为。
									如果您是账户管理员，那么首选语言还会控制通过电子邮件或传真发送的采购...</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">订单收件人：＊</td>
								<td id="order-detail-tab-col2"><input
									class="form-control input" id="receiver" name="receiver" /></td>
								<td style="width:70%; color:#A3A1A1;">客户可以通过 Ariba Network 向您发送订单。要将订单发送给贵组织的多个联系人，
									请创建分发列表并在此输入电子邮件地址。您可以随时更改。</td>
							</tr>
							
							<tr class="row-standard">
								<td class="col-standard1">标识符：</td>
								<td class="col-standard2">SU<%=request.getAttribute("uniqueName")%>
									<input type="hidden" id="uniqueName" name="uniqueName"
									value=<%=request.getAttribute("uniqueName")%>>
								</td>
							</tr>
						</table>
					</div>
				</form>
			</div>
			
			<div id="searching-title-out">
				<h3 class="inline-b black">介绍更多业务信息&nbsp;&nbsp;<span class="glyphicon glyphicon-triangle-right"></span></h3>
			</div>
			
			<div class="user-main">
				<div class="inline-b" id="user-detail-tab">
					<p><br>
						Ariba 会将公司的概要（其中包括公司基本信息）提供给其他公司，以寻求新商机。如果您想隐藏公司概要，您在完成注册后在“公司概要”页面上编辑概要可见性设置来随时隐藏。<br>
						单击创建并继续按钮，即表示您明确承认并同意 Ariba 可根据 Ariba 隐私政策、使用条款和适用法律，
						将您所在的欧盟、俄罗斯联邦或其他辖区以外且输入此系统的数据传输到 Ariba 和 Ariba 服务托管的计算机系统（位于全球各个数据中心）。<br>
						<br>
						您有权通过联系贵组织的 Ariba 管理员或 Ariba, Inc, 在此应用程序中访问和修改您的个人数据。此同意一经准予立即生效，但可通过向 Ariba 预先发送书面通知来取消。
						如果您是俄罗斯联邦境内的俄罗斯公民，您还明确确认您在此系统中输入或修改的任何数据之前已由贵组织存储在俄罗斯联邦境内的单独数据存储库中。
					</p>
					<!-- <form action="buyer/supplier/supplierCreationQuestionnaire" method="post"> -->
						<input type="checkbox" id="usePermission" name="usePermission" />&nbsp;我已阅读并同意&nbsp; <a>使用条款</a> 
						<br>
						<input type="checkbox" id="privacyPermission" name="privacyPermission" />&nbsp;我已阅读并同意&nbsp; <a>SAP Ariba 隐私声明</a> 
					<!-- </form>	 -->			
				</div>
				
				<div class="choice">
					<div class="right">
						<button class="btn-b" type="button" onclick="creationSubmit()">创建并继续</button>
						<button class="btn-w" type="button"
							onclick="window.location.href = document.referrer;">取消</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="theme-popover-mask"></div>
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

	<script>
	
		// 监听 将邮件用作用户名 功能
		$('#useEmailAsUsername').on('click', function(){
			var isChecked = document.getElementById("useEmailAsUsername");  
	    	if (isChecked.checked === true){	// 如果被选中，用户则不需要填写用户名
	    		$('#username').val($('#userEmail').val());	// 把用户名设置成邮件
	    		$("#username").attr("readonly", true);
	    	}else if (isChecked.checked === false){
	    		$("#username").attr("readonly", false);
	    	}
		});	
		
		// 如果用户选中 将邮箱用作用户名， 需要监听更改
		$('#userEmail').change(function(){
			var isChecked = document.getElementById("useEmailAsUsername");  
			if (isChecked.checked === true){
				$('#username').val($('#userEmail').val());	// 把用户名设置成邮件
			}
		});
		
		/* 提交表单  */
		function creationSubmit(){
			var companyName = $("#companyName").val();
			var countrySelect = $("#countrySelect").val();
			var zipcode = $("#zipcode").val();
			var state = $("#state").val();
			var city = $("#city").val();
			var district = $("#district").val();
			var number = $("#number").val();
			var street = $("#street").val();
			var lastname = $("#lastname").val();
			var firstname = $("#firstname").val();
			var userEmail = $("#userEmail").val();
			var username = $("#username").val();
			var password = $("#password").val();
			var passwordConfirm = $("#passwordConfirm").val();
			var receiver = $("#receiver").val();
						
			if(passwordConfirm != password){
				alert("两次密码输入不一致！");
				return true;
			}
			if(companyName=='' || countrySelect=='' || zipcode=='' || city=='' || district=='' || lastname == '' 
					|| firstname=='' || userEmail=='' || username=='' || password=='' || receiver==''){
				alert("操作失败，存在标星号的项未填写！");
			} else if ($('#usePermission').is(':checked') === false || $('#privacyPermission').is(':checked') === false ){
				alert("您有条款未同意");
			} else{
				$("#creationForm").submit();
			}
		}
	</script>
</body>
</html>
