<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>模版详情－条件界面</title>

<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->

		<div class="right" id="contract-detail-top">
			<table>
				<tr id="template-exit-out">
					<td id="template-exit-left">
						<table>
							<tr>
								<td class="text-right">状态：</td>
								<td class="blue">草稿</td>
							</tr>
							<tr>
								<td class="text-right">版本：</td>
								<td>原始</td>
							</tr>
						</table>
					</td>
					<td id="template-exit">
						<button class="btn-w">退出</button>
					</td>
				</tr>
			</table>

		</div>

		<div class="left" id="template-detail-label">
			<div id="template-detail-label-title">
				<a class="black">高级选项</a>
			</div>
			<div id="template-detail-label-content">
				<a class="f-13">创建我的测试项目</a> <a class="f-13">默认条件</a> <a
					class="black f-13">测试条件</a>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">修订</a>
				</div>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
				</div>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
				</div>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
				</div>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
				</div>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
				</div>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
				</div>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
				</div>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
				</div>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
				</div>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
				</div>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
				</div>
				<div>
					<label> <input type="checkbox" class="checkboxes" value="" />
					</label> <a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
				</div>
			</div>
		</div>


		<div id="order-detail-main-1">
			<div id="searching-title-out-2">
				<div class="inline-b">
					<a class="black" id="searching-title">模版1</a> <a class="grey"
						id="supplier-detail-title">合同工作区（采购）</a>
				</div>
			</div>

			<div id="order-detail-line4">
				<button class="orderDetailNotClicked"
					onclick="window.location.href='templateDetail.jsp'">概述</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='templateDetailDoc.jsp'">文档</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='templateDetailTask.jsp'">任务</button>
				<button class="order-detail-not-clicked">团队</button>
				<button class="order-detail-clicked">条件</button>
				<button class="order-detail-not-clicked">高级选项</button>
				<button class="order-detail-not-clicked">历史记录</button>
			</div>

			<div id="contract-detail-d">
				<a class="black f-16">条件</a>
				<button class="btn-w right">添加条件</button>
			</div>

			<div>
				<div>
					<table class="fulltab" id="contract-detail-tab">
						<tr class="searching-tab-row1">
							<td class="temp-cond-col1">名称</td>
							<td class="temp-cond-col2">说明</td>
							<td class="temp-cond-col3">表达式</td>
							<td class="temp-cond-col4">范围</td>
							<td class="temp-cond-col5"></td>
						</tr>
					</table>
				</div>
				<div id="contract-detail-tab">
					<table class="fulltab">
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
						<tr class="searching-tab-row2">
							<td class="temp-cond-col1">修正</td>
							<td class="temp-cond-col2"></td>
							<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
							<td class="temp-cond-col4">项目</td>
							<td class="temp-cond-col5">操作</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="adjust1"></div>
			<div id="contract-detail-d">
				<a class="black f-16">问题</a>
				<button class="btn-w right">添加问题</button>
			</div>
			<div>
				<table class="fulltab" id="contract-detail-tab">
					<tr class="searching-tab-row1">
						<td>文本</td>
						<td>可见性条件</td>
						<td></td>
					</tr>
					<tr class="searching-tab-row2">
						<td>你将使用哪个模版</td>
						<td>（无）</td>
						<td>操作</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->

	<%@ include file="other/footer.jsp"%>

</body>
</html>
