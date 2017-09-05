<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	<div class="content">
		<div class="container">
			<div class="standart-out"></div>
			<div id="thirdline-out">
				<div class="col-md-2 inline-b left">
					<select class="col-md-12" id="my-select"
						style="background-color: transparent">
						<option>按类别采购</option>
						<option>按＊＊采购</option>
						<option>按＊＊采购</option>
					</select>
				</div>
				<div class="col-md-2 inline-b left" id="search-service">
					<select class="col-md-12" id="my-select">
						<option>服务</option>
						<option>服务</option>
						<option>服务</option>
					</select>
				</div>

				<!-- 第三行搜索框 -->
				<input type="text" class="inline-b border-g left col-md-4"
					value="按部件号、供应商名称或关键字搜索"
					onfocus="if(this.value=='按部件号、供应商名称或关键字搜索') this.value=''"
					onblur="if(this.value=='')this.value='按部件号、供应商名称或关键字搜索' ">
				<button class="btn btn-default inline-b border-g left"
					id="search-btn">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				</button>


				<!-- 第三行右侧图标 -->
				<button class="btn-w right" style="margin-right: 20px;"
					onclick="window.location.href='procurementCatalog.jsp'">目录管理</button>
				<div class="thirdline-icons">

					<button id="shopping-cart-btn"
						onclick="window.location.href='procurementShoppingCart.jsp'">
						<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"
							id="shopping-cart"></span>
					</button>
				</div>

				<!-- 第三行右侧标记 -->
			</div>
		</div>
	</div>
</body>
</html>