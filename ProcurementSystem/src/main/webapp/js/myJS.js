function setRadioChecked(name,value) {
	var radio = document.getElementsByName(name);
	for (var i = 0; i < radio.length; i++) {
		if (radio[i].value == value){
			radio[i].checked = true;
			break;
		}
			
	}
}

function createButtonPage(i,code){// i表示页号
	var button = document.createElement("button")// 创建button结点
	var text = document.createTextNode(""+i);
	button.appendChild(text);
	button.id="page"+i;// 设置button属性
	button.setAttribute("class","btn-page");
	button.setAttribute("onclick","window.location.href='commodityCatalog?currPage="+i+"&code="+code+"'");
	pageList.appendChild(button);// 添加到pageList后面
}

function createButtonPageSearch(i,content){// i表示页号
	var button = document.createElement("button")// 创建button结点
	var text = document.createTextNode(""+i);
	button.appendChild(text);
	button.id="page"+i;// 设置button属性
	button.setAttribute("class","btn-page");
	button.setAttribute("onclick","window.location.href='search?currPage="+i+"&content="+content+"'");
	pageList.appendChild(button);// 添加到pageList后面
}


/** 添加购物车，修改购物车图标数量 */
function addShoppingCart(uniqueName,quantity){
  // window.location.href="commodityCatalogAddShoppingCart?uniqueName="+$("#uniqueName_"+uniqueName).val()+
	// "&" + "quantity="+$("#quantity_"+uniqueName).val();
	 $.ajax({  
		data : 
			{
				"uniqueName" : uniqueName,
				"quantity" : quantity
			},  
	    type:"GET",  
	    dataType: 'json',  
	    url:"/ProcurementSystem/buyer/commodityCatalog/commodityCatalogAddShoppingCart",  
	    error:function(data){  
	            alert("出错了！！:"+data.size);  
	        },  
	    success:function(data){  
	      /* alert("success:"+data); */
	       $("#shoppingCartSize").html(data) ;  
	    }  
	        });  
}
/** 图标获取失败，用默认图片代替 */
function error(imageUniqueName){
	$('#'+imageUniqueName).attr('src',"/ProcurementSystem/images/default-thumbnail.png")
}

/** 修改购物车单一商品数量，前端 */
function quantityChange(id,quantity){
	var x = Number($("#buyQuantity_"+id).val()) + Number(quantity);
	if(x==0) return;
	$("#buyQuantity_"+id).val(x);
	quantityChangeServer(id);//修改后台
}
/** 修改购物车单一商品数量,后台 */
function quantityChangeServer(uniqueName){
	var quantity = $("#buyQuantity_"+uniqueName).val();
	quantity = Number(quantity);
	if(isNaN(quantity) || quantity < 1){
		$("#buyQuantity_"+uniqueName).val(1);
		quantity = Number(1);
	}
	$.ajax({  
		data : 
		{
			"uniqueName" : uniqueName,
			"quantity" : quantity
		},  
    type:"POST",  
    dataType: 'json',  
    url:"/ProcurementSystem/buyer/commodityCatalog/updateCommodityBuyQuantity",  
    error:function(data){  
            alert("出错了！！:"+data.size);  
        },  
    success:function(data){  
    		//alert("success:"+data); 
    		$("#commodityTotalMoney_"+uniqueName).text("￥" + data.commodityTotalMoney);
    		$("#commodityTotalMoney1_"+uniqueName).text("￥" +data.commodityTotalMoney);
    		$("#totalMoney").text("￥" +data.totalMoney);
    	}  
	}   
	)
}

