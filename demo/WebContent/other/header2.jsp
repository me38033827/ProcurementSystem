<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<!-- 导航栏：第二行-->
<div class="container" id="secondline-out">
	<div class="dropdown" id="secondline-dropdown">
		<!-- 第二行靠左 -->
		<button class="secondline-left">首页</button>
		<button class="secondline-left">采购</button>
		<button class="secondline-left">发票</button>
		<button class="secondline-left">目录</button>

		<div class="btn-group secondline" role="group">
			<button type="button" class="btn btn-default dropdown-toggle btn-n"
				id="secondline-right-title" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">
				创建&nbsp;<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" id="secondline-dropright">
				<li><a class="secondline-right" href="sourcing-creation.jsp">寻源项目</a></li>
				<li><a class="secondline-right" href="supplier-creation.jsp">供应商</a></li>
				<li><a class="secondline-right"
					href="contract-workspace-creation.jsp">合同</a></li>
				<li><a class="secondline-right"
					href="procurement-catalog-creation.jsp">商品目录</a></li>
				<li><a class="secondline-right" href="pr-creation.jsp">请购单</a></li>
				<li><a class="secondline-right" href="invoice-creation.jsp">发票</a></li>
				<li><a class="secondline-right" href="template-creation.jsp">模版</a></li>
				<li><a class="secondline-right" href="approval-creation.jsp">审批</a></li>
			</ul>
		</div>

		<!-- 第二行靠右 -->
		<div class="btn-group secondline" role="group">
			<button type="button" class="btn btn-default dropdown-toggle"
				id="secondline-right-title" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">
				管理&nbsp;<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" id="secondline-dropright">
				<li><a class="secondline-right" href="sourcingSearching.jsp">在线寻源</a></li>
				<li><a class="secondline-right" href="supplierSearching.jsp">供应商管理</a></li>
				<li><a class="secondline-right" href="contract-searching.jsp">合同管理</a></li>
				<li><a class="secondline-right"
					href="procurement-commodity-catalog.jsp">商品目录</a></li>
				<li><a class="secondline-right" href="order-searching.jsp">订单协同</a></li>
				<li><a class="secondline-right" href="receipt-searching.jsp">收\发货协同</a></li>
				<li><a class="secondline-right" href="delivery-searching.jsp">物流管理</a></li>
				<li><a class="secondline-right" href="invoice-searching.jsp">发票管理</a></li>
				<li><a class="secondline-right" href="payment-searching.jsp">支付管理</a></li>
				<li><a class="secondline-right" href="userSearching.jsp">用户管理</a></li>
				<li><a class="secondline-right" href="template-detail-doc.jsp">模版管理</a></li>
				<li><a class="secondline-right" href="approval-searching.jsp">审批管理</a></li>
			</ul>
		</div>
	</div>
</div>