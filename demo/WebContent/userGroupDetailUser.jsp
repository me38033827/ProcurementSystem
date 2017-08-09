<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>用户组详情界面</title>


</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">


		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">查看“采购用户”的详细信息</a>
			<button class="btn-w right"
				onclick="window.location.href='userGroupSearchingR.jsp'">完成</button>
		</div>
		<div class="user-main">
			<!-- 搜索显示区域 -->
			<div id="order-detail-line4">
				<button class="order-detail-not-clicked" onclick="window.location.href='userGroupDetail.jsp'">常规</button>
				<button class="order-detail-clicked" onclick="window.location.href='userGroupDetailUser.jsp'">用户</button>
				<button class="order-detail-not-clicked" onclick="window.location.href='userGroupDetailSon.jsp'">子组</button>
			</div>

			<div class="adjust"></div>
			<div>
				<table class="fulltab">
					<tr class="searching-tab-row1">
						<td class="user-group-user-col1">用户标识符</td>
						<td class="user-group-user-col2">用户名</td>
						<td class="user-group-user-col3">类型</td>
					</tr>
				</table>
			</div>
			<div id="user-group-user-out">
				<table class="fulltab">
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Manager</a></td>
						<td class="user-group-user-col2"><a href="">Manager</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Mumeng</a></td>
						<td class="user-group-user-col2"><a href="">Mumeng</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Zhangli</a></td>
						<td class="user-group-user-col2"><a href="">Zhangli</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Bailu</a></td>
						<td class="user-group-user-col2"><a href="">Bailu</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Jingbing</a></td>
						<td class="user-group-user-col2"><a href="">Jingbing</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Hanlu</a></td>
						<td class="user-group-user-col2"><a href="">Hanlu</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Dengwenjing</a></td>
						<td class="user-group-user-col2"><a href="">Dengwenjing</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chengjia</a></td>
						<td class="user-group-user-col2"><a href="">Chengjia</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Guoran</a></td>
						<td class="user-group-user-col2"><a href="">Guoran</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Henana</a></td>
						<td class="user-group-user-col2"><a href="">Henana</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chenchao</a></td>
						<td class="user-group-user-col2"><a href="">Chenchao</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col2"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Xiaoyue</a></td>
						<td class="user-group-user-col2"><a href="">Xiaoyue</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">System</a></td>
						<td class="user-group-user-col2"><a href="">System</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Luling</a></td>
						<td class="user-group-user-col2"><a href="">Luling</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col2"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<!-- copy -->
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chengjia</a></td>
						<td class="user-group-user-col2"><a href="">Chengjia</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Guoran</a></td>
						<td class="user-group-user-col2"><a href="">Guoran</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Henana</a></td>
						<td class="user-group-user-col2"><a href="">Henana</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chenchao</a></td>
						<td class="user-group-user-col2"><a href="">Chenchao</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col2"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Xiaoyue</a></td>
						<td class="user-group-user-col2"><a href="">Xiaoyue</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Luhua</a></td>
						<td class="user-group-user-col2"><a href="">Luhua</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Liufeng</a></td>
						<td class="user-group-user-col2"><a href="">Liufeng</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col2"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chengjia</a></td>
						<td class="user-group-user-col2"><a href="">Chengjia</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Guoran</a></td>
						<td class="user-group-user-col2"><a href="">Guoran</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Henana</a></td>
						<td class="user-group-user-col2"><a href="">Henana</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chenchao</a></td>
						<td class="user-group-user-col2"><a href="">Chenchao</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col2"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Bufei</a></td>
						<td class="user-group-user-col2"><a href="">Bufei</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Lulu</a></td>
						<td class="user-group-user-col2"><a href="">Lulu</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Liufeng</a></td>
						<td class="user-group-user-col2"><a href="">Liufeng</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col2"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Henana</a></td>
						<td class="user-group-user-col2"><a href="">Henana</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chenchao</a></td>
						<td class="user-group-user-col2"><a href="">Chenchao</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col2"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Xiaoyue</a></td>
						<td class="user-group-user-col2"><a href="">Xiaoyue</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Luhua</a></td>
						<td class="user-group-user-col2"><a href="">Luhua</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Liufeng</a></td>
						<td class="user-group-user-col2"><a href="">Liufeng</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col2"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chengjia</a></td>
						<td class="user-group-user-col2"><a href="">Chengjia</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Guoran</a></td>
						<td class="user-group-user-col2"><a href="">Guoran</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Henana</a></td>
						<td class="user-group-user-col2"><a href="">Henana</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chenchao</a></td>
						<td class="user-group-user-col2"><a href="">Chenchao</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col2"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Bufei</a></td>
						<td class="user-group-user-col2"><a href="">Bufei</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Lulu</a></td>
						<td class="user-group-user-col2"><a href="">Lulu</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Liufeng</a></td>
						<td class="user-group-user-col2"><a href="">Liufeng</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col2"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Henana</a></td>
						<td class="user-group-user-col2"><a href="">Henana</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chenchao</a></td>
						<td class="user-group-user-col2"><a href="">Chenchao</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col2"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Xiaoyue</a></td>
						<td class="user-group-user-col2"><a href="">Xiaoyue</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Luhua</a></td>
						<td class="user-group-user-col2"><a href="">Luhua</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Liufeng</a></td>
						<td class="user-group-user-col2"><a href="">Liufeng</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col2"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chengjia</a></td>
						<td class="user-group-user-col2"><a href="">Chengjia</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Guoran</a></td>
						<td class="user-group-user-col2"><a href="">Guoran</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Henana</a></td>
						<td class="user-group-user-col2"><a href="">Henana</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chenchao</a></td>
						<td class="user-group-user-col2"><a href="">Chenchao</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col2"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Bufei</a></td>
						<td class="user-group-user-col2"><a href="">Bufei</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Lulu</a></td>
						<td class="user-group-user-col2"><a href="">Lulu</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Liufeng</a></td>
						<td class="user-group-user-col2"><a href="">Liufeng</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col2"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Henana</a></td>
						<td class="user-group-user-col2"><a href="">Henana</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chenchao</a></td>
						<td class="user-group-user-col2"><a href="">Chenchao</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col2"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Xiaoyue</a></td>
						<td class="user-group-user-col2"><a href="">Xiaoyue</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Luhua</a></td>
						<td class="user-group-user-col2"><a href="">Luhua</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Liufeng</a></td>
						<td class="user-group-user-col2"><a href="">Liufeng</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col2"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chengjia</a></td>
						<td class="user-group-user-col2"><a href="">Chengjia</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Guoran</a></td>
						<td class="user-group-user-col2"><a href="">Guoran</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Henana</a></td>
						<td class="user-group-user-col2"><a href="">Henana</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Chenchao</a></td>
						<td class="user-group-user-col2"><a href="">Chenchao</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col2"><a href="">Zhangqiong</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Bufei</a></td>
						<td class="user-group-user-col2"><a href="">Bufei</a></td>
						<td class="user-group-user-col3">第三方企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Lulu</a></td>
						<td class="user-group-user-col2"><a href="">Lulu</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Liufeng</a></td>
						<td class="user-group-user-col2"><a href="">Liufeng</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
					<tr class="searching-tab-row2">
						<td class="user-group-user-col1"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col2"><a href="">Gufeifei</a></td>
						<td class="user-group-user-col3">企业用户</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="other/footer.jsp"%>
	
</body>
</html>
