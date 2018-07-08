<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="theme-popover commodity-selection">
		<div class="popover-container full-height" >
			<div class="row full-height">
				<div class="col-md-7 full-height">
					<div class="full-height">
						<div class="pop-up-title">选择商品值</div>
						<div class="pop-up-subtitle">添加到当前所选值</div>
						<div>
							<span>名称或标识符：</span>
							<input class="input" style="padding-left:10px;padding-right:10px;"id="input-search"/>
							<button class="btn-b" id="btn-search" onclick="treeSearch();">搜索</button>
							<button class="btn-w" onclick="clearSearch();">清除搜索结果</button>
						</div>
						<div class="adjust-10"></div>
						<table class="table table-hover">
			        			<tr class="standard-row1">
			        				<td style="width:5%;"></td>
			        				<td style="width:77%;">名称</td>
			        				<td style="width:18%;">标识符</td>
			        			</tr>
			        		</table>
			          	<div id="treeview-sim" style="height:70%;overflow-x:scroll;margin-bottom:10px;" class="bottom-border">
			          	</div>
			        </div>
		        </div>
	        	<div class="col-md-5 full-height">
		        	<div class="full-height">
		        		<div class="adjust-10"></div>
		        		<div class="pop-up-subtitle">当前所选值</div>
		        		<div style="height:85%">
			        		<table id="treeview-selected" style="max-height:400px;overflow-x:scroll;" class="table table-hover bottom-border" >
			        			<tr class="standard-row1">
			        				<td style="width:65%">名称</td>
			        				<td style="width:15%">标识符</td>
			        				<td style="width:20%"></td>
			        			</tr>
			        			<c:forEach items="${sqm.commodities}" var="commodity">
								<tr class = "commodity-row" id="${commodity.nodeId}">
									<td class="selected-commodity" colspan="2">${commodity.description }<a class="right" style="width:15%;color:black;">${commodity.id }</a>
										<input type="hidden" name="node" value="${commodity.nodeId}"/>
									</td>
									<td>
										<button class="trans-btn" onclick="delCommodity(${commodity.nodeId});">删除</button>
									</td>
								</tr>
							</c:forEach>
			        		</table>
			        	</div>
		        		<input type="button" class="btn-b right" onclick="finishCommoditySelection();" value ="完成" />
		        	</div>
			    </div>
	        </div>
		</div>
	</div>