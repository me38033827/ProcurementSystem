<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>供应商-主页</title>
<%@include file="../other/supplierHeader1able.jsp"%>
<%@include file="../other/supplierHeader2.jsp"%>
</head>
<body>
	<div class="content" style="background-color: #10426b;">
		<div class="container">
			<div class="standard-out">
				<div class="row">
					<div class="col-md-12">
						<div id="thirdline-out"
							style="background-color: transparent; border: 0px;">
							<div class="inline-b left" id="search-service">
								<select id="my-select" style="width: 100px;">
									<option>订单和发布</option>
									<option>订单确认</option>
									<option>发货通知</option>
									<option>发票</option>
									<option>付款</option>
									<option>汇款</option>
									<option>时间表和开支表</option>
								</select>
							</div>
							<div class="inline-b left" id="search-service">
								<select id="my-select" style="width: 250px">
									<option>所有客户</option>
								</select>
							</div>
							<div class="right">
								<a><img src="/ProcurementSystem/images/icon-guide.png"
									class="img-icon icon-choose-white "></a> <a><img
									src="/ProcurementSystem/images/icon-trend.png" class="img-icon"></a><a><img
									src="/ProcurementSystem/images/icon-refresh.png" class="img-icon"></a>
							</div>
							<div>
								<input type="text" class="inline-b border-g left col-md-4"
									value="订单编号" onfocus="if(this.value=='订单编号') this.value=''"
									onblur="if(this.value=='')this.value='订单编号' "
									style="top: 0px; width: 250px;">
								<button class="btn btn-default inline-b border-g left"
									id="search-btn" style="top: 0px;">
									<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="main-middle-container">
							<div class="main-middle-left border-right-grey">
								<div class="main-middle-left-title">入门</div>
								<div>
									<button>1 复查费用结构</button>
									<button>2 确认记账联系人</button>
									<button class="main-middle-left-clicked">3 为您的账户添加用户</button>
								</div>
							</div>
							<div class="main-middle-right">
								<div class="main-middle-left-title margin-bottom"
									style="border: 0">将用户添加到您的帐户</div>
								<div style="text-align: center" class="margin-bottom">
									<img src="/ProcurementSystem/images/icon-user.png" width="70px"
										height="70px;">
								</div>
								<div class="margin-bottom">
									<span><%= request.getSession().getAttribute("username")%></span>，您好！为了更好地管理您的帐户，请为在
									Ariba上执行任务的每个员工创建新用户。如果您这次还没准备好添加用户，稍后可以随时在您的“公司设置”中执行此操作。
								</div>
								<div class="right">
									<button class="btn-w">添加用户</button>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-9">
						<div class="main-bottom-container">
							<div>
								<div class="right dropdown">
									<button class="btn-ma" data-toggle="dropdown">
										前14天&nbsp;<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" style="width: 120px;">
										<li><a class="manu-active" href="">&nbsp;&nbsp;前24小时</a></li>
										<li><a class="manu-active" href="">&nbsp;&nbsp;前7天</a></li>
										<li><a class="manu-active" href="">&nbsp;&nbsp;前14天</a></li>
										<li><a class="manu-active" href="">&nbsp;&nbsp;前31天</a></li>
									</ul>
								</div>
								<div class="right dropdown">
									<button class="btn-ma" data-toggle="dropdown"
										style="width: 100px">
										所有客户&nbsp;<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" style="width: 120px;">
										<li><a class="manu-active" href="">&nbsp;&nbsp;所有客户</a></li>
									</ul>
								</div>
							</div>
							<div class="standard-subtitle">订单、发票和付款</div>

							<div class="margin-bottom">
								<div class="border-right-grey">
									<div class="main-bottom-grad grad-choosed">
										<a><span>0</span><br>新订购单</a>
									</div>
									<div class="main-bottom-grad">
										<a><span>0</span><br>待确认订单</a>
									</div>
									<div class="main-bottom-grad">
										<a><span>0</span><br>待送货订单</a>
									</div>
									<div class="main-bottom-grad border-right-grey">
										<a><span>0</span><br>需要注意的订单</a>
									</div>
								</div>
								<div>
									<div class="main-bottom-grad">

										<a><span>0</span><br>新的提前付款提议</a>
									</div>
									<div class="main-bottom-grad">
										<a><img alt="" src="/demo/assets/img/icon-more.png"
											width="30px" height="30px"><br>更多</a>
									</div>
									<div style="clear: left"></div>
								</div>
							</div>
							<div style="clear: left;">
								<table class="fulltab">
									<tr class="standard-row1">
										<th width="20%">订单编号</th>
										<th>客户</th>
										<th>状态</th>
										<th>金额</th>
										<th width="20%">日期&#8595;</th>
										<th>发票金额</th>
										<th>操作</th>
									</tr>
									<tr>
										<td align="center" colspan="7">您没有任何 订单和发布。</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="main-bottom-container">
							<div class="standard-subtitle">任务</div>
							<div>
								<div class="left" style="padding-right: 20px">
									<a>更新概要信息</a>
								</div>
								<div class="progress" id="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="60"
										aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
										40%</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

