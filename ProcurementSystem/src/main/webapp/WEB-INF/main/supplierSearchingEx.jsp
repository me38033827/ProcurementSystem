<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
	function toshow() {
		alert(1);
		var num = request.getParameter("num");
	}
</script>
<style type="text/css">
.spinner {
	margin-top: 300px;
	width: 50px;
	height: 60px;
	text-align: center;
	font-size: 10px;
	position: fixed;
	z-index: 9999;
	top: 0;
	left: 640px;
} 

.spinner > div {
  background-color: #548bc9;
  height: 100%;
  width: 6px;
  display: inline-block;
   
  -webkit-animation: stretchdelay 1.2s infinite ease-in-out;
  animation: stretchdelay 1.2s infinite ease-in-out;
}
 
.spinner .rect2 {
  -webkit-animation-delay: -1.1s;
  animation-delay: -1.1s;
}
 
.spinner .rect3 {
  -webkit-animation-delay: -1.0s;
  animation-delay: -1.0s;
}
 
.spinner .rect4 {
  -webkit-animation-delay: -0.9s;
  animation-delay: -0.9s;
}
 
.spinner .rect5 {
  -webkit-animation-delay: -0.8s;
  animation-delay: -0.8s;
}
 
@-webkit-keyframes stretchdelay {
  0%, 40%, 100% { -webkit-transform: scaleY(0.4) } 
  20% { -webkit-transform: scaleY(1.0) }
}
 
@keyframes stretchdelay {
  0%, 40%, 100% {
    transform: scaleY(0.4);
    -webkit-transform: scaleY(0.4);
  }  20% {
    transform: scaleY(1.0);
    -webkit-transform: scaleY(1.0);
  }
}


</style>
<title>搜索供应商和客户结果</title>

<%@include file="../other/header1return.jsp"%>
<script src="/ProcurementSystem/js/searchCondition.js"></script>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<input hidden="hidden" id="userId" value="100001"> <input
					hidden="hidden" id="pageId" value="2004">
				<div class="row">
					<div class="col-md-2">
						<div class="adjust-10"></div>
						<div class="adjust-10"></div>
						<div class="contract-crea-left left blue">
							<div class="">
								<button id="contract-crea-not-clicked"
									onclick="window.location.href='supplierSearchDistribute?page=2004'">供应商和客户</button>
							</div>
							<div class="">
								<button id="contract-crea-clicked"
									onclick="window.location.href='supplierSearchEx'"
									scrolling="no">企业信息公示</button>
							</div>
						</div>
					</div>
					<div class="col-md-10">
						<iframe style="border: 0px;" id="ifrm"
							src="http://www.gsxt.gov.cn/index.html" width="100%"
							height="600px"> </iframe>
					</div>
				</div>
			</div>
		</div>
		<div class="spinner">
			<div class="rect1"></div>
			<div class="rect2"></div>
			<div class="rect3"></div>
			<div class="rect4"></div>
			<div class="rect5"></div>
		</div>
	</div>
	<div class="theme-popover-mask"></div>
	<%@ include file="../other/footer.jsp"%>
	<script>
		$('.theme-popover-mask').fadeIn(100);
		function back() {
			location.href = "../mainSupplier";
		}
		document.getElementById('ifrm').onload = function() {
			$('.rect1').hide();
			$('.rect2').hide();
			$('.rect3').hide();
			$('.rect4').hide();
			$('.rect5').hide();
			$('.theme-popover-mask').fadeOut(100);
		}
	</script>
</body>
</html>
