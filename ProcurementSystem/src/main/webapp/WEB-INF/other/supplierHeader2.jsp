<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<!-- 导航栏：第二行-->
<div class="container" id="secondline-out"
	style="width: 100%;">
	<div class="dropdown" id="secondline-dropdown">
		<!-- 第二行靠左 -->
		<button class="secondline-left"
			onclick="window.location.href='/ProcurementSystem/supplier/main'">首页</button>
		<button class="secondline-left">收件箱</button>
		<button class="secondline-left">发件箱</button>
		<button class="secondline-left"
			onclick="window.location.href='/ProcurementSystem/supplier/commodityCatalog/commodityCatalogList'">目录</button>
		<button class="secondline-left"
			onclick="window.location.href='commodityCatalogList.jsp'">报告</button>


		<!-- 第二行靠右 -->
		<div class="btn-group secondline" role="group">
			<button type="button" class="btn btn-default dropdown-toggle"
				id="secondline-right-title" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">
				创建&nbsp;<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" id="secondline-dropright">
				<li><a class="secondline-right" href="">PO发票</a></li>
				<li class="border-bottom-grey"><a class="secondline-right"
					href="">非PO发表</a></li>
				<li class="border-bottom-grey"><a class="secondline-right"
					href="">贷项凭单</a></li>
				<li><a class="secondline-right" href="/ProcurementSystem/supplier/commodityCatalog/commodityCatalogList">目录</a></li>

			</ul>
		</div>
		<div class="btn-group secondline" role="group">
			<button type="button" class="btn btn-default dropdown-toggle"
				id="secondline-right-title" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">
				CSV文档&nbsp;<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" id="secondline-dropright">
				<li><div class="container-list comment-div">上载</div></li>
				<li><a class="secondline-right" href="">订单确认CSV</a></li>
				<li><a class="secondline-right" href="">发货通知CSV</a></li>
				<li><div class="container-list comment-div">下载</div></li>
				<li><a class="secondline-right" href="">CSV模板</a></li>
			</ul>
		</div>
	</div>
</div>