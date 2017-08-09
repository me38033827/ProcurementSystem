<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司概要－营销</title>
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
						<button class="tag-not-clicked" onclick="window.location.href='profile.jsp'">基本</button>
						<button class="tag-not-clicked" onclick="window.location.href='profileBusiness.jsp'">商务</button>
						<button class="tag-clicked" onclick="window.location.href='profileMarket.jsp'">营销</button>
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
							<a class="standard-subtitle-main">商业信息</a>
						</div>
						
						<div>
							<table>
								<tr class="row-standard">
									<td class="col-standard1">成立年份：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">员工数量：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1 bold">年营业额：</td>
									<td class="col-standard2">
										<select id="my-select">
												<option></option>
												<option>10,000,000CNY以上</option>
										</select>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">股票交易代码：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
							</table>
						</div>
						
						<div class="standard-subtitle">
							<a class="standard-subtitle-main">财务信息</a>
						</div>
						
						<div>
							<table>
								<tr class="row-standard">
									<td class="col-standard1">供应商法律形式：</td>
									<td class="col-standard2">
										<select id="my-select">
												<option></option>
												<option>＊＊＊＊＊＊＊＊＊</option>
										</select>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">D-U-N-S编号：</td>
									<td class="col-standard2"></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">全球位置码：</td>
									<td class="col-standard2"><input class="form-control input"/></td>
								</tr>
							</table>
						</div>
						
						
						<div class="standard-subtitle">
							<a class="standard-subtitle-main">税务信息</a>
						</div>
						
						<div>
							<table>
								<tr class="row-standard">
									<td class="col-standard1">税款分类：</td>
									<td class="col-standard2">
										<select id="my-select">
												<option>（无值）</option>
												<option>＊＊＊＊＊＊＊＊＊＊＊＊＊</option>
										</select>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">税款类型：</td>
									<td class="col-standard2">
										<select id="my-select">
												<option>（无值）</option>
												<option>＊＊＊＊＊＊＊</option>
										</select>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">税务标识符：</td>
									<td class="col-standard2">
										<input class="form-control input inline-b"/>&nbsp;&nbsp;&nbsp;&nbsp;
										<a class="grey f-10 inline-b">不要输入短划线</a>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">地区税款标识符：</td>
									<td class="col-standard2">
										<input class="form-control input inline-b"/>&nbsp;&nbsp;&nbsp;&nbsp;
										<a class="grey f-10 inline-b">不要输入短划线</a>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">增值税标识符：</td>
									<td class="col-standard2">
										<input class="form-control input inline-b"/>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1"></td>
									<td class="col-standard2">
										<div class="checkbox inline-b">
											<label> <input type="checkbox" class="checkboxes"
												value="" />
											</label>
										</div>
										<a class="black">已注册VAT</a>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">VAT注册文档：</td>
									<td class="col-standard2">
										<a class="black"><无文档></a><a href="">&nbsp;&nbsp;上传</a><br>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1"></td>
									<td class="col-standard2">
										<div class="checkbox inline-b">
											<label> <input type="checkbox" class="checkboxes"
												value="" />
											</label>
										</div>
										<a class="black">完税清单</a>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">完税清单号：</td>
									<td class="col-standard2">
										<input class="form-control input inline-b"/>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">完税清单文档：</td>
									<td class="col-standard2">
										<a class="black"><无文档></a><a href="">&nbsp;&nbsp;上传</a><br>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">完税清单到期日期：</td>
									<td class="col-standard2">
										<input class="form-control input inline-b"/>
									</td>
								</tr>
							</table>
						</div>
						
						
						<div class="standard-subtitle">
							<a class="standard-subtitle-main">股东</a>
						</div>
						
						<div class="module">
							<table class="table table-hover">
								<tr class="standard-row1">
									<td class="blue">
										<label><input type="checkbox" class="checkboxes"value="" /></label>
									</td>
									<td>名称</td>
									<td>股份百分比</td>
									<td>类型</td>
								</tr>
								<tr>
									<td class="no-item" colspan="4">无项目</td>
								</tr>
								<tr class="standard-row3">
									<td colspan="4">
										<button class="btn-w">编辑</button>
										<button class="btn-w">删除</button>
										｜
										<button class="btn-w">创建</button>
									</td>
								</tr>
							</table>
						</div>
						
						<div class="standard-subtitle">
							<a class="standard-subtitle-main">董事会</a>
						</div>
						
						<div class="module">
							<table class="table table-hover">
								<tr class="standard-row1">
									<td class="blue">
										<label><input type="checkbox" class="checkboxes"value="" /></label>
									</td>
									<td>成员名称</td>
									<td>公司名称</td>
									<td>业务职称</td>
								</tr>
								<tr>
									<td class="no-item" colspan="4">无项目</td>
								</tr>
								<tr class="standard-row3">
									<td colspan="4">
										<button class="btn-w">编辑</button>
										<button class="btn-w">删除</button>
										｜
										<button class="btn-w">创建</button>
									</td>
								</tr>
							</table>
						</div>
						
						<div class="standard-subtitle">
							<a class="standard-subtitle-main">企业类型</a>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;中间商</div>
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;分包商／顾问</div>
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;分销商／批发商</div>
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;政府／公共机构</div>
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;制造商</div>
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;其他
									&nbsp;<input class="form-control input inline-b"/>
								</div>
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;生产商</div>
							</div>
							<div class="col-md-6">
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;零售商</div>
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;销售代理／制造代表</div>
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;服务提供商</div>
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;系统集成商</div>
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;运输／物流</div>
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;公用事业</div>
								<div class="profile-business-type"><label><input type="checkbox" class="checkboxes"value="" /></label>&nbsp;增值经销商</div>
							</div>
						</div>
					</div>
				</div>
				
				<%@ include file="profileR.jsp"%>
				
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