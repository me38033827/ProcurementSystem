<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司概要</title>
<%@include file="../other/header1.jsp"%>
<%@include file="../other/header2.jsp"%>
</head>
<body>
	<div class="container">
		<div id="order-detail-main">
			<div class="standard-title">
				<a class="standard-title-main">公司概要</a>
				<div class="standard-title-r">
					<button class="btn-b">保存</button>
					<button class="btn-w">关闭</button>
				</div>
			</div>
			<div class="row">
				<!-- 左侧主要内容 -->
				<div class="col-md-10">
					
					<div class="tag-line">
						<button class="tag-clicked" onclick="window.location.href='profile.jsp'">基本</button>
						<button class="tag-not-clicked" onclick="window.location.href='profileBusiness.jsp'">商务</button>
						<button class="tag-not-clicked" onclick="window.location.href='profileMarket.jsp'">营销</button>
						<button class="tag-not-clicked" onclick="window.location.href='profileContact.jsp'">联系人</button>
						<button class="tag-not-clicked" onclick="window.location.href='profileAuth.jsp'">认证</button>
						<button class="tag-not-clicked" onclick="window.location.href='profileCustomer.jsp'">请求的客户</button>
						<button class="tag-not-clicked" onclick="window.location.href='profileDoc.jsp'">其他文档</button>
					</div>
					
					<div class="profile-left">
						<div class="title-description">
							<a class="black">＊表示必填字段</a>
						</div>
						
						<div class="standard-subtitle">
							<a class="standard-subtitle-main">概述</a>
						</div>
						
						<div>
							<table>
								<tr class="row-standard">
									<td class="col-standard1">＊公司名称：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">其他名称（如果有）：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1"></td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">供应商标识符：</td>
									<td class="col-standard2">SU0000134</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">简短描述：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">网站：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
							</table>
						</div>
						
						<div class="standard-subtitle">
							<a class="standard-subtitle-main">地址</a>
						</div>
						
						<div>
							<table>
								<tr class="row-standard">
									<td class="col-standard1">＊邮政编码：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">省：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">＊城市：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">地址1：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">地址2：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">地址3：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
							</table>
						</div>
						
						<div class="standard-subtitle">
							<a class="standard-subtitle-main">附加公司地址</a>
						</div>
						
						<div class="module">
							<table class="table table-hover">
								<tr class="standard-row1">
									<td class="blue">地址名称&#8595;</td>
									<td class="blue">地址标识符</td>
									<td class="blue">增值税标识符</td>
									<td class="blue">税务标识符</td>
									<td>地址</td>
									<td>地区</td>
									<td>法律概要状态</td>
								</tr>
								<tr>
									<td class="no-item" colspan="7">无项目</td>
								</tr>
								<tr class="standard-row3">
									<td colspan="7">
										<button class="btn-w">创建</button>
									</td>
								</tr>
							</table>
						</div>
						
						<div class="standard-subtitle">
							<a class="standard-subtitle-main">产品和服务类别、送货地址或服务地点和行业</a>
						</div>
						
						<div class="profile-adjust">
							<div class="standard-subsubtitle">
								<a class="standard-subsubtitle-main">产品和服务类别＊</a>
							</div>
							
							<div class="standard-subsubtitle">
								<a class="standard-subsubtitle-description">输入贵公司提供的产品和服务。采购商提交的天晴球奖根据您在下面输入的产品和服务与您匹配。</a>
							</div>
							
							<div>
								<input id="profile-input" class="form-control input inline-b" value="输入产品和服务类别"
									onfocus="if(this.value=='输入产品和服务类别') this.value=''"
									onblur="if(this.value=='')this.value='输入产品和服务类别' "/>
								<button class="btn-w" id="profile-add">添加</button>
								<a id="profile-or">－或－</a>
								<a href="">浏览</a>
							</div>
							
							<div>
								<div class="delete-tag">
									<a class="grey left">激光打印机</a> 
									<a href="" class="grey right">X</a>
								</div>
							</div>
							
							<div class="standard-subsubtitle">
								<a class="standard-subsubtitle-main">送货地址或服务地点＊</a>
							</div>
							
							<div class="standard-subsubtitle">
								<a class="standard-subsubtitle-description">输入贵公司送货地址或服务地点。如果贵公司只为特定的地点服务，请在下面输入地点。</a>
							</div>
							
							<div>
								<input id="profile-input" class="form-control input inline-b" value="输入送货地址或服务地点"
									onfocus="if(this.value=='输入送货地址或服务地点') this.value=''"
									onblur="if(this.value=='')this.value='输入送货地址或服务地点' "/>
								<button class="btn-w" id="profile-add">添加</button>
								<a id="profile-or">－或－</a>
								<a href="">浏览</a>
							</div>
							
							<div>
								<div class="delete-tag">
									<a class="grey left">北京</a> 
									<a href="" class="grey right">X</a>
								</div>
							</div>
							
							<div class="standard-subsubtitle">
								<a class="standard-subsubtitle-main">行业</a>
							</div>
							
							<div class="standard-subsubtitle">
								<a class="standard-subsubtitle-description">请选择贵公司所从市的行业。</a>
							</div>
						</div>
						
						<div class="profile-end">
							<button class="btn-w right">添加</button>
						</div>
					</div>
				</div>
				
				
				<div class="col-md-2">
					<div class="profile-right-title">
						<div class="profile-right-title1">已请求的概要信息</div>
						<div class="profile-right-title2">
							<span class="glyphicon glyphicon-plus" id="plus"></span>
							<a href="">1更多字段</a>
						</div>
					</div>
					
					<div class="profile-right-compl">
						<div class="profile-right-compl1">
							<a class="black">公共概要完整性</a>
							<div class="progress" id="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="60"
									 aria-valuemin="0" aria-valuemax="100" style="width: 40%;"> 40%
								</div>
							</div>
						</div>
						<div class="profile-right-compl2">
							<a href="">简短描述</a><br>
							<a href="">网站</a><br>
							<a href="">年营业额</a><br>
							<a href="">D-U-N-S号码</a><br>
							<a href="">企业类型</a><br>
							<a href="">行业</a><br>
							<a href="">公司说明</a><br>
							<a href="">公司徽标</a><br>
						</div>
					</div>
					
					<div class="profile-right-look">
						<a href="">查看公共概要</a><br>
						<a href="">概要可见性设置</a>
					</div>
				</div>
			</div>
			<div class="standard-ending">
				<div class="standard-ending-r">
					<button class="btn-b">保存</button>
					<button class="btn-w">关闭</button>
				</div>				
			
			</div>
		</div>
	</div>
	

</body>
</html>