$(function(){
	if(pageId==2004){
		showSupplierBox();
	}else if(pageId==2005){
		showSupplierSPMBox();
	}else if(pageId==2006){
		showSupplierSQMBox();
	}
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/getSelectedCondition",
	    success:function(data){
	    		//初始化搜索条件
	    		for(var i=data.length-1;i>-1;i--){
	    			var addId="#search-"+data[i].fieldId.toString();
	    			$("#search-0").after("<tr class=\"row-search\" id=\"search-" + data[i].fieldId + "\">"
			      			+"<td class=\"col-search1\" id=\"search-cond" + data[i].fieldId + "\">"
			      			+"<div class='left'><select id=\"cond-" + data[i].fieldId + "\" onclick=\"findOtherCondition("+userId+","+pageId+","+data[i].fieldId+",'"+data[i].fieldName+"');\" onchange=\"changeCond("+data[i].fieldId+");\">"
			      			+"<option value=\"\">" + data[i].fieldName + "</option>"
			      			+"</select><div>"
			      			+"</td>"
			      			+"<td class=\"col-search2\">"
				      			+"<a id=\"plus"+data[i].fieldId+"\" href=\"javascript:addCondition('"+addId+"');\">" 
			      				+"<span class=\"glyphicon glyphicon-plus-sign blue"
								+"aria-hidden=\"true\"></span></a> &nbsp;"
			      				+"<a id=\"minus"+data[i].fieldId+"\" href=\"javascript:deleteCondition("+data[i].fieldId+");\">" 
			      				+"<span class=\"glyphicon glyphicon-minus-sign blue minus-sign"
								+"aria-hidden=\"true\"></span></a>"
							+"</td>"
			      			+"</tr>"
	    			);
	    			if(pageId==2004){
	    				supplierDistribute(data[i].fieldName, "#search-cond"+data[i].fieldId);
	    			}else if(pageId==2005){
	    				supplierSPMDistribute(data[i].fieldName, "#search-cond"+data[i].fieldId);
	    			}else if(pageId==2006){
	    				supplierSQMDistribute(data[i].fieldName, "#search-cond"+data[i].fieldId);
	    			}
	    		}
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
	//初始化搜索结果
	if(content==""||content==null){
		reset();
	}else{
		search();
	}
	action();
});

// 重置按钮对应功能 根据不同pageId调用不同的方法
function reset(){
	if(pageId=='2004'){
		resetSupplier();
	}else if(pageId=='2005'){
		resetSupplierSPM();
	}else if(pageId=='2006'){
		resetSupplierSQM();
	}
}

// 搜索按钮对应功能 根据不同pageId调用不同的方法
function search(){
	if(pageId=='2004'){
		searchSupplier();
	}else if(pageId=='2005'){
		searchSupplierSPM();
	}else if(pageId=='2006'){
		searchSupplierSQM();
	}
	
}

// 添加搜索结果下的操作栏 － 管理／创建
function action(){
	if(pageId=='2004'){
		actionSupplier();
	}else if(pageId=='2005'){
		actionSupplierSPM();
	}else if(pageId=='2006'){
		actionSupplierSQM();
	}
}

//＋功能实现：在特定位置增加搜素条件
function addCondition(place){
	//获得某位置的原始fieldId，之后搜索得到其当前位置
	var fieldId = place.split("-")[1];
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId,
			"fieldId":fieldId
		},  
		type:"POST",  
		dataType: 'json',
		// 获得剩余搜索条件中排在第一个的条件
	    url:"../search/addSearchCondition",
	    success:function(data){
	    		//console.log(data);
	      	var addId="#search-"+data.fieldId.toString();
	      	$(place).after("<tr class=\"row-search\" id=\"search-" + data.fieldId + "\">"
		      			+"<td class=\"col-search1\" id=\"search-cond" + data.fieldId + "\">"
		      			+"<div class='left'><select id=\"cond-" + data.fieldId + "\" onclick=\"findOtherCondition("+userId+","+pageId+","+data.fieldId+",'"+data.fieldName+"');\" onchange=\"changeCond("+data.fieldId+");\">"
		      			+"<option value=\"\">" + data.fieldName + "</option>"
		      			+"</select></div>"
		      			+"</td>"
		      			+"<td class=\"col-search2\">"
			      			+"<a id=\"plus"+data.fieldId+"\" href=\"javascript:addCondition('"+addId+"');\">" 
		      				+"<span class=\"glyphicon glyphicon-plus-sign blue"
							+"aria-hidden=\"true\"></span></a> &nbsp;"
		      				+"<a id=\"minus"+data.fieldId+"\" href=\"javascript:deleteCondition("+data.fieldId+");\">" 
		      				+"<span class=\"glyphicon glyphicon-minus-sign blue minus-sign"
							+"aria-hidden=\"true\"></span></a>"
						+"</td>"
		      			+"</tr>"
	      	);
	      	if(pageId==2004){
				supplierDistribute(data.fieldName, "#search-cond"+data.fieldId);
			}else if(pageId==2005){
				supplierSPMDistribute(data.fieldName, "#search-cond"+data.fieldId);
			}else if(pageId==2006){
				supplierSQMDistribute(data.fieldName, "#search-cond"+data.fieldId);
			}
	   	},
	    error:function(data){
	    		alert("无更多搜索条件！")
	    }  
	});
}

//－功能实现：删除某筛选条件
function deleteCondition(fieldId){
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId,
			"fieldId":fieldId
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/delSearchCondition",
	    success:function(data){
	      	$("#search-"+fieldId).remove();
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
}

//点击选择框时，自动加载其它未显示搜索条件
function findOtherCondition(userId, pageId, fieldId, fieldName){
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/findOtherCondition",
	    success:function(data){
	      	console.log(data.length);
	      	console.log(data);
	      	if(document.getElementById("cond-"+fieldId).options.length!=1){
	      		$("#cond-"+fieldId).empty();
	      		$("#cond-"+fieldId).append("<option>"+fieldName+"</option>");
	      	};
	      	var value = "";
	      	for(i=0;i<data.length;i++){
	      		value = data[i].fieldId + "_" + data[i].fieldName;
	      		$("#cond-"+fieldId).append("<option value='"+value+"'>"+data[i].fieldName+"</option>");
	      	}
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
}

//改变搜索条件
function changeCond(originId){
	var value = $("#cond-"+originId).val();
	var newId = value.split("_")[0];
	var newName = value.split("_")[1];
	var newPlace = "#search-"+newId;
	var place = "#search-"+originId;
	
	// 通过ajax实现改变搜索条件数据，并删除原始数据
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId,
			"newId":newId,
			"originId":originId
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/changeSearchCondition",
	    success:function(data){
	      	console.log(data);
	      	var addId="#search-"+data.fieldId;
	      	if(pageId==2004){
				supplierDistribute(data.fieldName, "#search-cond"+data.fieldId);
			}else if(pageId==2005){
				supplierSPMDistribute(data.fieldName, "#search-cond"+data.fieldId);
			}else if(pageId==2006){
				supplierSQMDistribute(data.fieldName, "#search-cond"+data.fieldId);
			}
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
	
	// 改变td
	document.getElementById("search-"+originId).id="search-"+newId;
	document.getElementById("search-cond"+originId).id="search-cond"+newId;
	$("#search-cond"+newId).empty();
	$("#search-cond"+newId).append("<div class='left'><select id=\"cond-" + newId + "\" onclick=\"findOtherCondition("+userId+","+pageId+","+newId+",'"+newName+"');\" onchange=\"changeCond("+newId+");\">"
			+"<option>" + newName + "</option>"
			+"</select></div>"
			);
	// 改变＋－符号对应内容
	document.getElementById("plus"+originId).id="plus"+newId;
	document.getElementById("minus"+originId).id="minus"+newId;
	$("#plus"+newId).attr("href", "javascript:addCondition("+newPlace+")");
	$("#minus"+newId).attr("href", "javascript:deleteCondition("+newId+")");
}

// 供应商相关
// 搜索供应商 （除了商品外可以搜索）
function searchSupplier(){
	var content = $("#content").val();
	var approveState = $("#approveState").val();
	var isClient = $('input[name="isClient"]:checked ').val();
	var isSupplier = $('input[name="isSupplier"]:checked ').val();
	var name = $("#name").val();
	var creator = $("#creator").val();
	if(approveState==null){approveState="";}
	if(isClient==null){isClient="";}
	if(isSupplier==null){isSupplier="";}
	if(name==null){name="";}
//	console.log(content);
//	console.log(approveState);
//	console.log(isClient);
//	console.log(name);
//	console.log(isSupplier);
//	console.log(creator);
	$.ajax({
		data:{
			"name":name,
			"approveState":approveState,
			"content":content,
			"isClient":isClient,
			"isSupplier":isSupplier
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/supplierSearch",
	    success:function(data){
	      	if(data.length!=0){
		      	$("#numOfResults").text(data.length);
		      	var results = "";
		      	for(var i = 0; i< data.length; i++){
		      		results=results+"<tr>"
									+"<td style=\"padding: 5px;\">"
									+"<input type=\"checkbox\" name=\"check_name\" value=\""+ data[i].uniqueName +"\" id=\"chk-searching-s"+i+"\" class=\"chk\" />"
									+"<label for=\"chk-searching-s"+i+"\"></label>"
									+"</td>"
									+"<td style=\"width: 20%;\">"
									+"<a href=\"../supplier/supplierDetail?id="+data[i].uniqueName+"\">"+data[i].name+"</a></td>"
									+"<td style=\"width: 20%;\">SU"+data[i].uniqueName+"</td>"
									+"<td style=\"width: 15%;\">"+data[i].approveState+"</td>"
									+"<td style=\"width: 15%;\">"+data[i].isSupplier+"</td>"
									+"<td style=\"width: 15%;\">"+data[i].isClient+"</td>"
									+"<td style=\"width: 15%; padding: 3px;\">"
										+"<div class=\"btn-group\" align=\"right\">"
											+"<button class=\"btn-m\" data-toggle=\"dropdown\">操作&nbsp;<span class=\"caret\"></span></button>"
											+"<ul class=\"dropdown-menu manu-btn-o\">"
												+"<li><a class=\"manu-btn\" href=\"\">停用</a></li>"
												+"<li><a class=\"manu-btn\" href=\"\">删除</a></li>"
											+"</ul>"
											/*+"<button class=\"btn-m\" onclick=\"sim_delete(this)\">删除</button>"*/
										+"</div>"
									+"</td>"
								+"</tr>";
		      	};
	      	}else{
	      		$("#numOfResults").text(0);
	      		var results = "<tr id=\"no-result\">"
							+"<td colspan=\"7\" class=\"no-item f-13 grey\">请在上面输入搜索条件，然后单击<b>搜索</b></td>"
						+"</tr>";
	      	}
	      	$("#result-content").empty();
	      	$("#result-content").append("<table class=\"table table-hover\">"+results+"</table>");
	    },
	    error:function(data){
	    		console.log(data);
	    		alert("数据库错误！")
	    }  
	});
}





// 重置供应商搜索结果
function resetSupplier(){
	// empty all search field
	$("#content").val("");
	$("#name").val("");
	$("#creator").val("");
	$('#isClient3').prop('checked', true);
	$('#isSupplier3').prop('checked', true);
	$("#approveState").val("无选择");
	// empty number of results
	$("#numOfResults").text(0);
	//set result-content to original state
	$("#result-content").empty();
  	$("#result-content").append("<table class=\"table table-hover\">"
  			+"<tr id=\"no-result\">"
			+"<td colspan=\"7\" class=\"no-item f-13 grey\">请在上面输入搜索条件，然后单击<b>搜索</b></td>"
			+"</tr>"
  			+"</table>");
}

// 显示供应商搜索结果表头
function showSupplierBox(){
	$("#result-title").append("<table class=\"table table-hover\">"
						+"<tr class=\"standard-row1\">"
							+"<td style=\"padding: 5px;\">"
								+"<input type=\"checkbox\" id=\"chk-searching-s0\" class=\"chk\" />" 
								+"<label for=\"chk-searching-s0\"></label>"
							+"</td>"
							+"<td style=\"width: 20%;\">组织名称</td>"
							+"<td style=\"width: 20%;\">系统标识符</td>"
							+"<td style=\"width: 15%;\">审批状态</td>"
							+"<td style=\"width: 15%;\">供应商</td>"
							+"<td style=\"width: 15%;\">客户</td>"
							+"<td style=\"width: 15%;\"></td>"
						+"</tr>"
					+"</table>"
			);
}

// 显示供应商搜索结果最后一行操作栏
function actionSupplier(){
	$("#result-action").append("<table class=\"table table-hover\">"
						+"<tr class=\"standard-row3\">"
							+"<td colspan=\"7\"><a class=\"arrow-turn\">&#8627;</a>"
								+"<button class=\"btn-w\" onclick=\"mul_delete()\">删除</button> ｜"
								+"<button class=\"btn-w\">管理</button> ｜"
								+"<div class=\"btn-group\">"
									+"<button class=\"btn-w\" data-toggle=\"dropdown\">"
										+"新建&nbsp;<span class=\"caret\"></span>"
									+"</button>"
									+"<ul class=\"dropdown-menu manu-btn-o\">"
										+"<li><button class=\"manu-btn trans-btn black\" onclick=\"window.location.href='../supplier/supplierCreation'\">供应商</button></li>"
										+"<li><a class=\"manu-btn\">客户</a></li>"
									+"</ul>"
								+"</div>"
							+"</td>"
						+"</tr>"
					+"</table>"
			);
}

function supplierDistribute(fieldName, place){
	//alert(supplierSearchInfo);
	if(fieldName=="客户"){client(place, supplier_isClient)};
	if(fieldName=="供应商"){supplier(place, supplier_isSupplier)};
	if(fieldName=="组织名称"){organizationName(place, supplier_name)};
	if(fieldName=="审批状态"){approveState(place, supplier_approveState)};
	if(fieldName=="帐户所有者"){owner(place, null)};
	if(fieldName=="供应的商品"){commoditiesProvided(place)};
}

function client(place, value){
	$(place).append("&nbsp;&nbsp;<label><input type=\"radio\" id=\"isClient1\" name=\"isClient\"  value=\"是\">&nbsp;是&nbsp;</label>"
			   +"&nbsp;&nbsp;<label><input type=\"radio\" id=\"isClient2\" name=\"isClient\"  value=\"否\">&nbsp;否&nbsp;</label>"
			   +"&nbsp;&nbsp;<label><input type=\"radio\" id=\"isClient3\" name=\"isClient\"  value=\"是或否\" checked>&nbsp;是或否&nbsp;</label>");
	$("#isClient_"+value).attr("checked",true);
}

function supplier(place, value){
	$(place).append("&nbsp;&nbsp;<label><input type=\"radio\" name=\"isSupplier\" id=\"isSupplier1\" value=\"是\">&nbsp;是&nbsp;</label>"
				   +"&nbsp;&nbsp;<label><input type=\"radio\" name=\"isSupplier\" id=\"isSupplier2\"  value=\"否\">&nbsp;否&nbsp;</label>"
				   +"&nbsp;&nbsp;<label><input type=\"radio\" name=\"isSupplier\" id=\"isSupplier3\"  value=\"是或否\"checked>&nbsp;是或否&nbsp;</label>");
	$("#isSupplier_"+value).attr("checked",true);
}

function organizationName(place, value){
	$(place).append("&nbsp;<input class=\"input\" style=\"padding-left:10px;\" id=\"name\" value=\""+ value +"\"/>");
}

function approveState(place, value){
	$(place).append("&nbsp;<select id=\"approveState\">"
			+"<option value=\"无选择\">无选择</option>"
			+"<option value=\"已批准\">已批准</option>"
			+"<option value=\"未批准\">未批准</option>"
			+"<option value=\"已拒绝\">已拒绝</option>"
			+"<option value=\"注册中\">注册中</option>"
			+"<option value=\"重新提交以进行审批\">重新提交以进行审批</option>"
			+"</select>");
}

function commoditiesProvided(place, value){
	$(place).append("  [ <a>选择</a> ]");
}

function owner(place, value){
	$(place).append("&nbsp;<input style=\"padding-left:10px;\" class=\"input\" id=\"creator\"/>");
}

// supplierSPM 绩效
function searchSupplierSPM(){
	var content = $("#content").val();
	var status = $("#status").val();
	var supplierId = $('#supplierId').val();
	var title = $("#title").val();
	if(title==null){title="";}
	if(supplierId==null){supplierId="";}
	if(status==null){status="";}
	if(content==null){content="";}
//	console.log(content);
//	console.log(status);
//	console.log(supplierId);
//	console.log(title);
	$.ajax({
		data:{
			"content":content,
			"status":status,
			"supplierId":supplierId,
			"title":title
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/supplierSPMSearch",
	    success:function(data){
	    	console.log(data);
	      	if(data.length!=0){
		      	$("#numOfResults").text(data.length);
		      	var results = "";
		      	for(var i = 0; i< data.length; i++){
		      		results=results+"<tr>\n" +
		      	    "<td style=\"width: 30%;\"><a href=\"../supplier/spmSummary?id="+data[i].id+"\">"+data[i].title+"</a></td>\n" +
		      	    "<td style=\"width: 10%;\">"+data[i].user.name+"</td>\n" +
		      	    "<td style=\"width: 10%;\">"+data[i].supplier.name+"</td>\n" +
		      	    "<td style=\"width: 35%;\">\n" +
		      	    "</td>\n" +
		      	    "<td style=\"width: 15%; padding: 3px;\">"+data[i].status+" &nbsp;&nbsp;&nbsp;&nbsp;\n" +
		      	    "</td>\n" +
		      	    "</tr>";
		      	};
	      	}else{
	      		$("#numOfResults").text(0);
	      		var results = "<tr id=\"no-result\">"
							+"<td colspan=\"7\" class=\"no-item f-13 grey\">请在上面输入搜索条件，然后单击<b>搜索</b></td>"
						+"</tr>";
	      	}
	      	$("#result-content").empty();
	      	$("#result-content").append("<table class=\"table table-hover\">"+results+"</table>");
	    },
	    error:function(data){
	    		console.log(data);
	    		alert("数据库错误！")
	    }  
	});
}

//重置 spm
function resetSupplierSPM(){
	// empty all search field
	$("#content").val("");
	$("#title").val("");
	$("#supplierId").val("");
	$('#statue').val("");
	
	// empty number of results
	$("#numOfResults").text(0);
	//set result-content to original state
	$("#result-content").empty();
  	$("#result-content").append("<table class=\"table table-hover\">"
  			+"<tr id=\"no-result\">"
			+"<td colspan=\"7\" class=\"no-item f-13 grey\">请在上面输入搜索条件，然后单击<b>搜索</b></td>"
			+"</tr>"
  			+"</table>");
}

function supplierSPMDistribute(fieldName, place){
	if(fieldName=="组织名称"){organizationNameSPM(place, supplierSPM_title)};
	if(fieldName=="审批状态"){approveStateSPM(place, supplierSPM_supplierId)};
	if(fieldName=="供应商标识符"){identifierSPM(place, supplierSPM_status)};
}

function organizationNameSPM(place, value){
	$(place).append("&nbsp;<input class=\"input\" style=\"padding-left:10px;\" id=\"title\" value=\""+ value +"\"/>");
}

function approveStateSPM(place, value){
	$(place).append("&nbsp;<select id=\"status\">"
			+"<option value=\"无选择\">无选择</option>"
			+"<option value=\"已批准\">已批准</option>"
			+"<option value=\"待审核\">待审核</option>"
			+"<option value=\"已拒绝\">已拒绝</option>"
			+"<option value=\"重新提交以进行审批\">重新提交以进行审批</option>"
			+"</select>");
}

function identifierSPM(place, value){
	$(place).append("&nbsp;<input class=\"input\" style=\"padding-left:10px;\" id=\"supplierId\" value=\""+ value +"\"/>");
}

//显示spm搜索结果表头
function showSupplierSPMBox(){
	$("#result-title").append("<table class=\"table table-hover\">"+
					"<tr class=\"standard-row1\">\n" +
				    "<td style=\"width:30%;\">\n" +
				    "标题\n" +
				    "</td>\n" +
				    "<td style=\"width:10%;\">所有者</td>\n" +
				    "<td style=\"width:10%;\">供应商</td>\n" +
				    "<td style=\"width:35%;\">商品</td>\n" +
				    "<td style=\"width:15%;\">资格状态</td>\n" +
				    "</tr>"+
					"</table>"
			);
}

//显示spm搜索结果最后一行操作栏
function actionSupplierSPM(){
	$("#result-action").append("<table class=\"table table-hover\">"
						+"<tr class=\"standard-row3\">"
							+"<td colspan=\"7\"><a class=\"arrow-turn\">&#8627;</a>"
								+"<button class=\"btn-w\">管理</button>"
							+"</td>"
						+"</tr>"
					+"</table>"
			);
}

//supplierSQM 资格 可共用spm的方法
function supplierSQMDistribute(fieldName, place){
	if(fieldName=="标题"){organizationNameSPM(place, supplierSQM_title)};
	if(fieldName=="审批状态"){approveStateSPM(place, supplierSQM_supplierId)};
	if(fieldName=="供应商标识符"){identifierSPM(place, supplierSQM_status)};
	if(fieldName=="商品"){commoditySQM(place, supplierSQM_status)};
}

//显示sqm搜索结果表头
function showSupplierSQMBox(){
	$("#result-title").append("<table class=\"table table-hover\">" + 
					"<tr class=\"standard-row1\">\n" +
				    "<td style=\"width:20%;\">\n" +
				    "标题\n" +
				    "</td>\n" +
				    "<td style=\"width:10%;\">所有者</td>\n" +
				    "<td style=\"width:10%;\">供应商</td>\n" +
				    "<td style=\"width:40%;\">商品</td>\n" +
				    "<td colspan=\"2\" style=\"width:20%;\">资格状态</td>\n" +
				    "</tr>"+
					"</table>"
			);
}

//显示sqm搜索结果最后一行操作栏
function actionSupplierSQM(){
	$("#result-action").append("<table class=\"table table-hover\">"
						+"<tr class=\"standard-row3\">"
							+"<td colspan=\"7\"><a class=\"arrow-turn\">&#8627;</a>"
								+"<button class=\"btn-w\" onclick=\"window.location.href='../supplier/sqmCreation?action=initial'\">创建</button>"
							+"</td>"
						+"</tr>"
					+"</table>"
	);
	
}

//重置SQM
function resetSupplierSQM(){
	// empty all search field
	$("#content").val("");
	$("#title").val("");
	$("#supplierId").val("");
	$('#status').val("无选择");
	
	// empty number of results
	$("#numOfResults").text(0);
	//set result-content to original state
	$("#result-content").empty();
  	$("#result-content").append("<table class=\"table table-hover\">"
  			+"<tr id=\"no-result\">"
			+"<td colspan=\"7\" class=\"no-item f-13 grey\">请在上面输入搜索条件，然后单击<b>搜索</b></td>"
			+"</tr>"
  			+"</table>");
  	resetSQMCommodities();
}
//supplierSQM 绩效
function searchSupplierSQM(){
	var content = $("#content").val();
	var status = $("#status").val();
	var supplierId = $('#supplierId').val();
	var title = $("#title").val();
	var commodities = $("#commoditiesId").val();
	if(title==null){title="";}
	if(supplierId==null){supplierId="";}
	if(status==null){status="";}
	if(content==null){content="";}
	if(commodities==null){commodities="";}
	console.log(title);
	$.ajax({
		data:{
			"content":content,
			"status":status,
			"supplierId":supplierId,
			"title":title,
			"commodities":commodities
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/supplierSQMSearch",
	    success:function(data){
	    		//console.log(data);
	      	if(data.length!=0){
		      	$("#numOfResults").text(data.length);
		      	var results = "";
		      	//for every sqm
		      	for(var i = 0; i< data.length; i++){
		      		//for every commodity
		      		var commodities ="<table style=\"width:100%\">";
		      		for(var j = 0; j < data[i].commodities.length; j++){
		      			commodities +="<tr><td style=\"width:60%;\">"+data[i].commodities[j].description+"</td><td>"+data[i].commodities[j].id+"</td></tr>"
		      		}
		      		commodities +="</table>";
		      		results=results+"<tr>\n" +
		      	    "<td style=\"width: 20%; vertical-align:middle;\"><a href=\"../supplier/sqmSummary?id="+data[i].id+"\">"+data[i].title+"</a></td>\n" +
		      	    "<td style=\"width: 10%; vertical-align:middle;\">"+data[i].user.name+"</td>\n" +
		      	    "<td style=\"width: 10%; vertical-align:middle;\"><a href=\"../supplier/supplierDetail?id="+data[i].supplier.uniqueName+"\">"+data[i].supplier.name+"</a></td>\n" +
		      	    "<td style=\"width: 40%; vertical-align:middle;\">\n" + commodities +
		      	    "</td>\n" +
		      	    "<td style=\"width: 5%; padding: 3px; vertical-align:middle;\"><span id=\"status-"+data[i].id+"\">"+data[i].status+"</span>" +
		      	    "</td>\n" +	
		      	    "<td valign='middle' style=\"width: 15%; padding:5px 0; vertical-align:middle;\">\n" +
		      	    		"<div class=\"btn-group\">"+
		      	    			/* 此处标记当前数据的Id和名字,供删除 */
		      	    			"<input type=\"hidden\" name=\"_id\" value=\" "+ data[i].id +" \" />" +
		      	    			"<input type=\"hidden\" name=\"_name\" value=\" "+ data[i].title +" \" />" +
		      	    			"<button class=\"btn-w\" data-toggle=\"dropdown\" style=\"width:80px;\" onclick=\"appendSQMManu("+data[i].id+")\" >"+
		      	    				"操作&nbsp;<span class=\"caret\"></span>"+
		      	    			"</button>"+
		      	    			"<ul class=\"dropdown-menu manu-btn-o\" id=\"manu-"+data[i].id+"\">"+
		      	    			"</ul>"+
		      	    			/*"<button class=\"btn-w\" style=\"width:80px;\">删除</button>"+*/
		      	    		"</div>"+
		      	    "</td>\n" +
		      	    "</tr>";
		      	};
	      	}else{
	      		$("#numOfResults").text(0);
	      		var results = "<tr id=\"no-result\">"
							+"<td colspan=\"7\" class=\"no-item f-13 grey\">请在上面输入搜索条件，然后单击<b>搜索</b></td>"
						+"</tr>";
	      	}
	      	$("#result-content").empty();
	      	$("#result-content").append("<table class=\"table table-hover\">"+results+"</table>");
	    },
	    error:function(data){
	    		console.log(data);
	    		alert("数据库错误！")
	    }  
	});
}

function appendSQMManu(id){
	//清空操作下拉框
	$("#manu-"+id).empty();
	var status = $("#status-"+id).text();
	if(status=="已批准"){
		$("#manu-"+id).append("<li><button class=\"manu-btn trans-btn\" onclick=\"alterSQMStatus("+id+",'已停用')\">停用</button></li>"
				+"<li><button class=\"manu-btn trans-btn\" onclick=\"deleteSqm(this)\">删除</button></li>");
	}
	if(status=="待审核"){
		$("#manu-"+id).append("<li><button class=\"manu-btn trans-btn\" onclick=\"alterSQMStatus("+id+",'已批准')\">批准</button></li>"
				+"<li><button class=\"manu-btn trans-btn\" onclick=\"deleteSqm(this)\">删除</button></li>");
	}
	if(status=="已停用"){
		$("#manu-"+id).append("<li><button class=\"manu-btn trans-btn\" onclick=\"alterSQMStatus("+id+",'已批准')\">激活</button></li>"
				+"<li><button class=\"manu-btn trans-btn\" onclick=\"deleteSqm(this)\">删除</button></li>");
	}
}

function alterSQMStatus(id,newStatus){
	$.ajax({
		data:{
			"sqmId":id,
			"status":newStatus
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../supplier/sqmStatus",
	    success:function(data){
    		$("#status-"+id).text(newStatus);
    		alert("状态修改成功！");
	   	},
	    error:function(data){
    		alert("数据库错误！请重新操作。");
	    }  
	});
}

function commoditySQM(place, value){
	$(place).append("<div style='display:inline-block; margin-left:10px;' id='commodities-container'><table id=\"commodities\"></table>"
				+"<input type='hidden' id='commoditiesId' name='commoditiesId'/></div>");
	$("#commodities-container").append("<input type='button' onclick='onSelectCommodity()' class='trans-btn' style='display:block' value='选择'/>");
	resetSQMCommodities();
}

function resetSQMCommodities(){
	//清除之前选择的内容
	$(".commodity-row").each(function(index,element){
		delCommodity(element.getAttribute("id"));
	});
	$("#commodities").empty();
	$("#commoditiesId").val("");
	if(showTree==1){
		clearSearch();
	}
}

/*
 * 删除SQM供应商资格
 */
function deleteSqm(btn){
	var _div = $(btn).parent().parent().parent();
	/* 拿到要删除的id和name */
	var _id = $(_div).find("input[name='_id']").val();
	var _name = $(_div).find("input[name='_name']").val();
	if(confirm('确定要删除  ' + _name + ' 吗？') == true){
		$.ajax({
			url : '/ProcurementSystem/buyer/supplier/sqmDelete',
			data : {'id':_id},
			type : 'post',
			cache : false,
			//contentType : 'application/json;charset=utf-8',
			success : function(data) {
					alert(data.result);
					if(data.result == "删除成功！")
						window.location.reload();
			},
			error : function() {
				alert("删除失败！请重试！");
			}
		});
	}
}

/*
 * 多选删除供应商
 */
function mul_delete(){
	
	var _list = new Array();
	$('input[name="check_name"]:checked').each(function(i) {
		_list[i] = $(this).val();
	});
	if (_list.length != 0) {
		
		if(confirm('确定要删除选中的   ' + _list.length + ' 条数据吗？') == true){
			$.ajax({
				url : 'supplierMulDelete',// 跳转到 action  
				data : JSON.stringify(_list),
				type : 'post',
				cache : false,
				contentType : 'application/json;charset=utf-8', //发送信息至服务器时内容编码类型。    
				success : function(data) {
						alert("删除成功");
						window.location.reload();
				},
				error : function() {
					alert("删除失败！请重试！");
				}
			});
		}
		
	} else {
		alert("请选择要删除的选项");
		return false;
	}
}

