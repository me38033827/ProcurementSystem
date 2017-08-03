<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>商品目录界面</title>

<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">

		<!-- 导航栏 第三行 -->
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
				onclick="window.location.href='procurement-catalog.jsp'">目录管理</button>
			<div class="thirdline-icons">

				<button id="shopping-cart-btn"
					onclick="window.location.href='procurement-shopping-cart.jsp'">
					<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"
						id="shopping-cart"></span>
				</button>
			</div>

			<!-- 第三行右侧标记 -->
		</div>

		<!-- 主要内容 -->
		<div class="main-subjects">
			<!-- 右侧过滤栏 -->
			<div id="filter">
				<a class="filter-title" id="filter-first">过滤条件</a> <input
					type="text" class="inline-b border-g left col-md-8" value="在结果中搜索"
					style="font-size: 12px;"
					onfocus="if(this.value=='在结果中搜索') this.value=''"
					onblur="if(this.value=='')this.value='在结果中搜索' ">
				<button class="btn btn-default inline-b border-g left"
					id="search-btn">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				</button>
				<div class="adjust"></div>
				<a class="filter-title">合同</a> <a class="filter-content">搜索合同</a> <a
					class="filter-title">关键字</a> <a class="filter-content">affairs(1)</a>
				<a class="filter-content">civic(1)</a> <a class="filter-content">description(1)</a>
				<a class="filter-content">enter(1)</a> <a class="filter-content">查看更多</a>
				<a class="filter-title">类别</a> <a class="filter-content">其他政治、公民事物服务(1)</a>
				<a class="filter-content">其他制造业相关业务(3)</a> <a class="filter-title">供应商</a>
				<a class="filter-content">发发发发展有限公司(1)</a> <a class="filter-content">有限责任公司(3)</a>
			</div>

			<!-- 搜索结果显示区域 -->
			<div class="results-out col-md-8">
				<a class="result-line1 inline-b">目录主页&nbsp;／&nbsp;采购组织：CN05&nbsp;／&nbsp;服务&nbsp;／&nbsp;其他服务</a>
				<div class="result-line2">
					<div class="result-line2-left">
						<a class="result-line2-font">找到3个项目。</a>
					</div>
					<div class="result-line2-middle">
						<a class="result-line2-font">查看方式：</a> <span
							class="glyphicon glyphicon-list" aria-hidden="true"
							id="glyphicon-list"></span>
					</div>
					<div class="result-line2-right">
						<a class="result-line2-font">排序方式：相关性</a>
					</div>
				</div>
				<div class="result-line3">
					<button type="submit" class="btn-w">添加到购物车</button>
					<button type="submit" class="btn-w">比较项目</button>
				</div>

				<!-- 所有搜索结果 -->
				<div class="result-items">
					<!-- 每条搜索结果 -->
					<div class="result-item">
						<div class="item-checkbox">
							<div class="checkbox">
								<label> <input type="checkbox" class="checkboxes"
									value="" />
								</label>
							</div>
						</div>

						<div class="item-whole">
							<a class="item-content-blue"
								href="procurement-commodity-detail.jsp">产品1</a><br> <a
								class="item-content-grey">供应商：</a> <a class="item-content-blue">供应商1</a><br>
							<a class="item-content-grey">供应商部件号：</a> <a
								class="item-content-black">123</a><br> <a
								class="item-content-grey">剩余时间：</a> <a
								class="item-content-black">0天</a><br> <a
								class="item-content-grey">合同：</a> <a class="item-content-black">c123</a><br>
							<a class="item-content-black">描述</a>
						</div>

						<div class="item-price">
							<a class="item-price-green">656.66 CNY</a> <a
								class="item-price-grey">&nbsp;／件</a><br> <a
								class="item-price-black">数量： <input class="item-quantity"
								value="1" />
								<button class="item-add">添加到购物车</button></a> <a
								class="item-price-blue">添加到收藏夹</a>
						</div>
					</div>

					<div class="result-item">
						<div class="item-checkbox">
							<div class="checkbox">
								<label> <input type="checkbox" class="checkboxes"
									value="" />
								</label>
							</div>
						</div>

						<div class="item-whole">
							<a class="item-content-blue">产品2</a><br> <a
								class="item-content-grey">供应商：</a> <a class="item-content-blue">供应商2</a><br>
							<a class="item-content-grey">供应商部件号：</a> <a
								class="item-content-black">124</a><br> <a
								class="item-content-grey">剩余时间：</a> <a
								class="item-content-black">0天</a><br> <a
								class="item-content-grey">合同：</a> <a class="item-content-black">c124</a><br>
							<a class="item-content-black">描述</a>
						</div>

						<div class="item-price">
							<a class="item-price-green">329.00 CNY</a> <a
								class="item-price-grey">&nbsp;／件</a><br> <a
								class="item-price-black">数量： <input class="item-quantity"
								value="1" />
								<button class="item-add">添加到购物车</button></a> <a
								class="item-price-blue">添加到收藏夹</a>
						</div>
					</div>

					<div class="result-item">
						<div class="item-checkbox">
							<div class="checkbox">
								<label> <input type="checkbox" class="checkboxes"
									value="" />
								</label>
							</div>
						</div>

						<div class="item-whole">
							<a class="item-content-blue">产品3</a><br> <a
								class="item-content-grey">供应商：</a> <a class="item-content-blue">供应商3</a><br>
							<a class="item-content-grey">供应商部件号：</a> <a
								class="item-content-black">125</a><br> <a
								class="item-content-grey">剩余时间：</a> <a
								class="item-content-black">0天</a><br> <a
								class="item-content-grey">合同：</a> <a class="item-content-black">c125</a><br>
							<a class="item-content-black">描述</a>
						</div>

						<div class="item-price">
							<a class="item-price-green">432.00 CNY</a> <a
								class="item-price-grey">&nbsp;／件</a><br> <a
								class="item-price-black">数量： <input class="item-quantity"
								value="1" />
								<button class="item-add">添加到购物车</button></a> <a
								class="item-price-blue">添加到收藏夹</a>
						</div>
					</div>
				</div>

				<!-- pager -->

			</div>
		</div>
	</div>


	<%@ include file="other/footer.jsp"%>
	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
