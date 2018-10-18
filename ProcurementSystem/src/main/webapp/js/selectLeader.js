//是否已经从后端获得数据
var getLeader = 0;

function onSelectLeader() {
	$('.theme-popover-mask').fadeIn(100);
	$('.theme-popover').slideDown(200);
	if(getLeader==0){
		getUsers();
		getLeader=1;
	}
}

function getUsers(){
	$.ajax({
		data:$("#leaderSearch").serialize(),  
		type:"POST",  
		async:true,
	    url:"leaderSearching",
	    success:function(data){
	    	$("#leaderTable").empty();
	    	var leaders = data.users;
	    	if(leaders.length == 0){
	    		$("#leaderTable").append("<tr class=\"order-t-col2\"> "
						+"<td colspan=\"4\" style=\"text-align:center\"> "
							+"<span>暂无数据</span>"
						+"</td>"
						+"</tr>");
	    	}
	    	for(var i=0;i<leaders.length;i++){
	    		$("#leaderTable").append("<tr class=\"order-t-col2\"> "
											+"<td class=\"user-search-col1\"> "
												+"<input type=\"hidden\" name=\"leaderChecked\" value=\" " + leaders[i].uniqueName + " \" /> "
												+"<input type=\"hidden\" name=\"leaderNameChecked\" value=\" " + leaders[i].userIdentifier + " \" /> "
											+"</td>"
											+"<td class=\"user-search-col3\">"
												+"<a href=\"../userDetail?userUniqueName=${user.uniqueName}\"> " + leaders[i].userIdentifier  + "</a></td>"
											+"<td class=\"user-search-col3\">" + leaders[i].name + "</td>"
											+"<td class=\"user-search-col3\">" + leaders[i].passwordAdapter +"</td>"
											+"<td class=\"user-search-col8\"> "
												+"<input type=\"button\" class=\"btn-w\" value=\"选择\" onclick=\"finishLeaderSelection(this)\" /> "
											+"</td>"
										+"</tr>");
	    	}
	   	},
	    error:function(){  
	    	alert("操作失败，请重试！");
	    }  
	});
}

/** 选择事件 */
function finishLeaderSelection(btn){
	var tr = $(btn).parent().parent();
	var identifier = $(tr).find("input[name='leaderNameChecked']").val();
	if($("#supervisorName").val() != identifier){
		$("#supervisorName").val(identifier);
		$("#leaderShow").append(identifier);
	}
	cancelLeaderSelection();
}

/** 取消选择 */
function cancelLeaderSelection(){
		$('.theme-popover-mask').fadeOut(100);
		$('.theme-popover').slideUp(200);
}

