<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="theme-popover commodity-selection">
	<div class="popover-container full-height">
		<div class="row full-height">
			<div class="col-md-12 full-height">
				<div class="full-height">
					<div class="pop-up-title">选择商品值</div>
					<div class="pop-up-subtitle">添加到当前所选值</div>
					<div>
						<span>名称或标识符：</span> <input class="input"
							style="padding-left: 10px; padding-right: 10px;"
							id="input-search" />
						<button class="btn-b" id="btn-search" onclick="treeSearch();">搜索</button>
						<button class="btn-w" onclick="clearSearch();">清除搜索结果</button>
					</div>
					<div class="adjust-10"></div>
					<table class="table table-hover">
						<tr class="standard-row1">
							<td style="width: 5%;"></td>
							<td style="width: 55%;">名称</td>
							<td style="width: 20%;">标识符</td>
							<td style="width: 20%;"></td>
						</tr>
					</table>
					<div id="treeview-sim"
						style="height: 65%; overflow-x: scroll; margin-bottom: 10px;"
						class="bottom-border"></div>
					<div><button class="btn-b right" onclick="cancel();" >取消</button></div>
				</div>

			</div>


			<br> <br>
		</div>
	</div>
</div>
<script>
	function cancel(){
		//浮框效果
		$('.theme-popover-mask').fadeOut(100);
		$('.theme-popover').slideUp(200);
	}
</script>