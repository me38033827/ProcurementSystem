<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>寻源搜索界面</title>

<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">


		<!-- 主要内容 -->
		<div class="main-subjects">
			<!-- 右侧 -->
			<div id="filter">
				<a id="order-filter-right-title">寻源</a> <a
					id="order-filter-right-title2">查看所有</a> <a
					id="order-filter-right-sub"> <span
					class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
					&nbsp;&nbsp;我的标签
				</a> <a id="order-filter-right-subcontent">无项目</a> <a
					id="order-filter-right-sub"> <span
					class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
					&nbsp;&nbsp;我保存的搜索设置
				</a> <a id="order-filter-right-subcontent">无项目</a> <a
					id="order-filter-right-sub"> <span
					class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
					&nbsp;&nbsp;公共的保存搜索
				</a> <a id="order-filter-right-subcontent">无项目</a>
			</div>

			<!-- 搜索显示区域 -->
			<div class="results-out">
				<a class="black f-14">请更改搜索条件或名称，然后进行搜索</a>
				<div id="filters">
					<div id="order-filter-line1">
						<div class="left black" id="order-filter-line1-title">搜索筛选器</div>
						<div class="right blue" id="order-filter-line1-option">搜索选项</div>
					</div>
					<div id="sourcing-search">
						<input type="text" class="border-g col-md-5"
							value="使用标题、标识符或任何其他词语搜索"
							onfocus="if(this.value=='使用标题、标识符或任何其他词语搜索') this.value=''"
							onblur="if(this.value=='')this.value='使用标题、标识符或任何其他词语搜索' ">
					</div>
					<div id="order-filter-line3">
						<div class="right">
							<button class="btn-b">搜索</button>
							<button class="btn-w">重置</button>
							<button class="btn-w">保存搜索</button>
						</div>
					</div>
				</div>

				<div>
					<div id="order-total">
						<div class="left" id="order-total-title">
							<a class="black">搜索结果</a>
						</div>
						<div class="left" id="order-total-quantity">
							<a class="black">找到122个项目</a>
						</div>
						<div class="right">
							<button class="icon-btn">
								<span class="glyphicon glyphicon-th icon" aria-hidden="true"></span>
							</button>
							<a class="grey inline-b">|</a>
							<button class="icon-btn">
								<span class="glyphicon glyphicon-chevron-down icon"
									aria-hidden="true"></span>
							</button>
						</div>
					</div>
				</div>

				<div id="order-result-out">
					<div>
						<table class="fulltab">
							<tr class="searching-tab-row1">
								<td class="sourcing-t-col1">标题</td>
								<td class="sourcing-t-col2">所有者</td>
								<td class="sourcing-t-col3">商品</td>
								<td class="sourcing-t-col4">项目标识符</td>
								<td class="sourcing-t-col5">节省目标</td>
								<td class="sourcing-t-col6">事件类型</td>
							</tr>
						</table>
					</div>
					<div id="sourcing-tab">
						<table class="fulltab">
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1"><a href="sourcingDetail.jsp" >激光打印机寻源</a></td>
								<td class="sourcing-t-col2">用户1</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS13344</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12243</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户1</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12242</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12241</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">黑白打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12240</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户1</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12239</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12238</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12237</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12236</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12235</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12234</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12233</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12232</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12231</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12230</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12229</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12228</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12227</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12226</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="sourcing-t-col1">激光打印机</td>
								<td class="sourcing-t-col2">用户2</td>
								<td class="sourcing-t-col3"></td>
								<td class="sourcing-t-col4"><a href="#">WS12225</a></td>
								<td class="sourcing-t-col5"></td>
								<td class="sourcing-t-col6">0</td>
							</tr>
						</table>
					</div>
					<div>
						<table class="fulltab">
							<tr class="searching-tab-row3">
								<td colspan="8">
									<button class="btn-w">复制</button>
									<button class="btn-w">删除</button>
									<button class="btn-w"
										onclick="window.location.href='sourcingCreation.jsp'">新建</button>
								</td>
							</tr>
						</table>
					</div>
				</div>
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
