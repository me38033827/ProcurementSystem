function setRadioChecked(name,value) {
	var radio = document.getElementsByName(name);
	for (var i = 0; i < radio.length; i++) {
		if (radio[i].value == value){
			radio[i].checked = true;
			break;
		}
			
	}
}

function createButtonPage(i){//i表示页号
	var button = document.createElement("button")//创建button结点
	var text = document.createTextNode(""+i);
	button.appendChild(text);
	button.id="page"+i;//设置button属性
	button.setAttribute("class","btn-page");
	button.setAttribute("onclick","window.location.href='commodityCatalog?currPage="+i+"'");
	pageList.appendChild(button);//添加到pageList后面
}
function addShoppingCart(uniqueName,quantity){
  //window.location.href="commodityCatalogAddShoppingCart?uniqueName="+$("#uniqueName_"+uniqueName).val()+ "&" + "quantity="+$("#quantity_"+uniqueName).val();
	 $.ajax({  
		data : 
			{
				"uniqueName" : uniqueName,
				"quantity" : quantity
			},  
	    type:"GET",  
	    dataType: 'json',  
	    url:"commodityCatalogAddShoppingCart",  
	    error:function(data){  
	            alert("出错了！！:"+data.size);  
	        },  
	    success:function(data){  
	      /*  alert("success:"+data);   */
	       $("#shoppingCartSize").html(data) ;  
	    }  
	        });  
}

function error(imageUniqueName){
	$('#'+imageUniqueName).attr('src',"/ProcurementSystem/images/default-thumbnail.png")
}