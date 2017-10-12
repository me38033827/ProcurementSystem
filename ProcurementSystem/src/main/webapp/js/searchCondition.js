
$(function(){	
	var userId = $("#userId").val();
	var pageId = $("#pageId").val();
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/getSelectedCondition",
	    success:function(data){
	    		console.log(data);
	    		for(var i=data.length-1;i>-1;i--){
	    			var addId="#search-"+data[i].fieldId.toString();
	    			$("#search-cond-all").after("<tr class=\"row-search\" id=\"search-" + data[i].fieldId + "\">"
			      			+"<td class=\"col-search1\" id=\"search-cond" + data[i].fieldId + "\">"
			      			+"<select id=\"cond-" + data[i].fieldId + "\" onclick=\"findOtherCondition("+userId+","+pageId+","+data[i].fieldId+",'"+data[i].fieldName+"');\" onchange=\"changeCond("+data[i].fieldId+");\">"
			      			+"<option value=\"2345678\">" + data[i].fieldName + "</option>"
			      			+"</select>"
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
	    			supplierDistribute(data[i].fieldName, "#search-cond"+data[i].fieldId);
	    		}
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
});


// 在特定位置增加搜素条件
function addCondition(place){
	var userId = $("#userId").val();
	var pageId = $("#pageId").val();
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/addSearchCondition",
	    success:function(data){
	      	var addId="#search-"+data[0].fieldId.toString();
	      	$(place).after("<tr class=\"row-search\" id=\"search-" + data[0].fieldId + "\">"
		      			+"<td class=\"col-search1\" id=\"search-cond" + data[0].fieldId + "\">"
		      			+"<select id=\"cond-" + data[0].fieldId + "\" onclick=\"findOtherCondition("+userId+","+pageId+","+data[0].fieldId+",'"+data[0].fieldName+"');\" onchange=\"changeCond("+data[0].fieldId+");\">"
		      			+"<option value=\"2345678\">" + data[0].fieldName + "</option>"
		      			+"</select>"
		      			+"</td>"
		      			+"<td class=\"col-search2\">"
			      			+"<a id=\"plus"+data[0].fieldId+"\" href=\"javascript:addCondition('"+addId+"');\">" 
		      				+"<span class=\"glyphicon glyphicon-plus-sign blue"
							+"aria-hidden=\"true\"></span></a> &nbsp;"
		      				+"<a id=\"minus"+data[0].fieldId+"\" href=\"javascript:deleteCondition("+data[0].fieldId+");\">" 
		      				+"<span class=\"glyphicon glyphicon-minus-sign blue minus-sign"
							+"aria-hidden=\"true\"></span></a>"
						+"</td>"
		      			+"</tr>"
	      	);
	      	supplierDistribute(data[0].fieldName, "#search-cond"+data[0].fieldId);
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
}

function changeCond(originId){
	var userId = $("#userId").val();
	var pageId = $("#pageId").val();
	var value = $("#cond-"+originId).val();
	var newId = value.split("_")[0];
	var newName = value.split("_")[1];
	var newPlace = "#search-"+newId;
	var place = "#search-"+originId;
	addSpecCondition(place, newId,originId);
	// change td
	document.getElementById("search-"+originId).id="search-"+newId;
	document.getElementById("search-cond"+originId).id="search-cond"+newId;
	$("#search-cond"+newId).empty();
	$("#search-cond"+newId).append("<select id=\"cond-" + newId + "\" onclick=\"findOtherCondition("+userId+","+pageId+","+newId+",'"+newName+"');\" onchange=\"changeCond("+newId+");\">"
			+"<option>" + newName + "</option>"
			+"</select>"
			);
	// change plus and minus sign
	document.getElementById("plus"+originId).id="plus"+newId;
	document.getElementById("minus"+originId).id="minus"+newId;
	$("#plus"+newId).attr("href", "javascript:addCondition("+newPlace+")");
	$("#minus"+newId).attr("href", "javascript:deleteCondition("+newId+")");
}

function addSpecCondition(place, fieldId, originId){
	var userId = $("#userId").val();
	var pageId = $("#pageId").val();
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId,
			"fieldId":fieldId
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/addSpecSearchCondition",
	    success:function(data){
	      	console.log(data);
	      	var addId="#search-"+data.fieldId;
	      	supplierDistribute(data.fieldName, "#search-cond"+data.fieldId);
	      	delSpecCondition(originId);
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
}

function delSpecCondition(fieldId){
	var userId = $("#userId").val();
	var pageId = $("#pageId").val();
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
	    		console.log(data);
	      	console.log("筛选条件删除成功！");
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
}

function deleteCondition(fieldId){
	var userId = $("#userId").val();
	var pageId = $("#pageId").val();
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
	    		console.log(data);
	      	console.log("筛选条件删除成功！");
	      	$("#search-"+fieldId).remove();
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
}

function findOtherCondition(userId, pageId, fieldId, fieldName){
	var userId = $("#userId").val();
	var pageId = $("#pageId").val();
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

function supplierDistribute(fieldName, place, info){
	//alert(supplierSearchInfo);
	if(fieldName=="客户"){client(place)};
	if(fieldName=="供应商"){supplier(place)};
	if(fieldName=="组织名称"){organizationName(place)};
	if(fieldName=="审批状态"){approvalStatus(place)};
	if(fieldName=="帐户所有者"){owner(place)};
	if(fieldName=="供应的商品"){commoditiesProvided(place)};
}

function client(place){
	$(place).append("&nbsp;&nbsp;<label><input type=\"radio\" id=\"isClient\" name=\"isClient\"  value=\"是\">&nbsp;是&nbsp;</label>"
			   +"&nbsp;&nbsp;<label><input type=\"radio\" id=\"isClient\" name=\"isClient\"  value=\"否\">&nbsp;否&nbsp;</label>"
			   +"&nbsp;&nbsp;<label><input type=\"radio\" id=\"isClient\" name=\"isClient\"  value=\"是或否\" checked>&nbsp;是或否&nbsp;</label>");
}

function supplier(place){
	$(place).append("&nbsp;&nbsp;<label><input type=\"radio\" name=\"isSupplier\"  value=\"是\">&nbsp;是&nbsp;</label>"
				   +"&nbsp;&nbsp;<label><input type=\"radio\" name=\"isSupplier\"  value=\"否\">&nbsp;否&nbsp;</label>"
				   +"&nbsp;&nbsp;<label><input type=\"radio\" name=\"isSupplier\"  value=\"是或否\"checked>&nbsp;是或否&nbsp;</label>");
}

function organizationName(place){
	$(place).append("&nbsp;<input class=\"input\" name=\"name\"/>");
}

function approvalStatus(place){
	$(place).append("&nbsp;<select name=\"approveState\">"
			+"<option value=\"无选择\">无选择</option>"
			+"<option value=\"已批准\">已批准</option>"
			+"<option value=\"未批准\">未批准</option>"
			+"<option value=\"已拒绝\">已拒绝</option>"
			+"<option value=\"注册中\">注册中</option>"
			+"<option value=\"重新提交以进行审批\">重新提交以进行审批</option>"
			+"</select>");
}

function commoditiesProvided(place){
	$(place).append("  [ <a>选择</a> ]");
}

function owner(place){
	$(place).append("&nbsp;<input class=\"input\" name=\"creatorUniqueName\"/>");
}