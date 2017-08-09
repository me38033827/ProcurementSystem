<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>模版详情界面</title>

<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->

		<div class="right" id="contract-detail-top">
			<table>
				<tr>
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
				<button class="order-detail-clicked">概述</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='template-detail-doc.html'">文档</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='template-detail-task.html'">任务</button>
				<button class="order-detail-not-clicked">团队</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='template-detail-cond.html'">条件</button>
				<button class="order-detail-not-clicked">高级选项</button>
				<button class="order-detail-not-clicked">历史记录</button>
			</div>



			<div class="inline-b filters full">
				<div class="half inline-b">
					<div>
						<div class="invoice-detail-title">
							<a class="black">属性</a> <a class="right f-12">操作</a>
						</div>
						<table class="tab-height" id="supplier-crea-tab1">
							<tr>
								<td class="supplier-crea-tab-col1">名称：</td>
								<td class="supplier-crea-tab-col2">模版1</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">说明：</td>
								<td class="supplier-crea-tab-col2">＊＊＊＊＊＊＊</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">版本：</td>
								<td class="supplier-crea-tab-col2">原始</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">标识符：</td>
								<td class="supplier-crea-tab-col2">124123</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">所有者：</td>
								<td class="supplier-crea-tab-col2">＊＊＊</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">流程状态：</td>
								<td class="supplier-crea-tab-col2">正在创建</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">基本语言：</td>
								<td class="supplier-crea-tab-col2">中文</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">排名：</td>
								<td class="supplier-crea-tab-col2">10</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">访问控制：</td>
								<td class="supplier-crea-tab-col2">采购合同用户专用</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">条件：</td>
								<td class="supplier-crea-tab-col2"></td>
							</tr>
						</table>
					</div>

					<div>
						<div class="invoice-detail-title">
							<a class="black">版本历史记录</a>
						</div>
						<table class="tab-height fulltab" id="supplier-crea-tab1">
							<tr>
								<td class="supplier-crea-tab-col1">模版1</td>
								<td class="supplier-crea-tab-col2">2017年7月18日 上午 11:55</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="half inline-b right">
					<div class="inline-b tab-height" id="supplier-crea-tab2">
						<div class="inline-b filters full">
							<div class="invoice-detail-title full">
								<a class="black">编辑模版的推荐步骤</a>
							</div>
							<div>
								<p class="black">1.在团队选项卡中添加项目组。</p>
								<p class="black">2.在任务选项卡中添加阶段和里程碑。</p>
								<p class="black">3.在文档选项卡中添加文件夹和文档。</p>
								<p class="black">4.在创建文档时向文档中添加文档任务，如复审。</p>
								<p class="black">5.从任务选项卡中添加“待办”任务。</p>
								<p class="black">6.在条件选项卡上添加条件和问题</p>
								<p class="black">7.指定文档和任务的条件</p>
								<p class="black">8.单击退出以保存更改并退出</p>
								<p class="black">9.当您准备好使用模版来创建项目时，请从概述选项卡下面的操作菜单中发布该模版</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="other/footer.jsp"%>


</body>
</html>
