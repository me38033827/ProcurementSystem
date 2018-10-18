<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="right" id="right-div">
	<button class="firstline-icon">
		<span class="glyphicon glyphicon-search firstline-search"
			aria-hidden="true"></span>
	</button>
	<button class="firstline-icon">
		<span class="glyphicon glyphicon-print firstline-print"
			aria-hidden="true"></span>
	</button>
	<button class="firstline-help">帮助</button>
	<div class="btn-group" role="group" style="margin-right:20px;">
		<button type="button"
			class="btn btn-default dropdown-toggle" id="secondline-right-title"
			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="padding-top:0;margin-top:3px;">
			用户：<%= request.getSession().getAttribute("username")%>&nbsp;<span class="caret"></span>
		</button>
		<input type="text" hidden="hidden" id="userId" value="<%= request.getSession().getAttribute("userUniqueName")%>" />
		<ul class="dropdown-menu" id="secondline-dropright">
			<li><a href="/ProcurementSystem/logout" class="secondline-right">注销</a></li>
			<li><a href="/ProcurementSystem/userDetail?userUniqueName=<%= request.getSession().getAttribute("userUniqueName")%>" class="secondline-right">用户详情</a></li>
			<li><a class="secondline-right">更改密码</a></li>
			<li><a class="secondline-right">更改密码提问</a></li>
		</ul>
	</div>
	
</div>
