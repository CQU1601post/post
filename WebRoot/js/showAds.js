
function showAds(returnedData){//根据返回的图片信息（json对象）在图片框显示
	var count = 0;
	$("#ads").append("<tr>");
	for ( var i = 0; i < returnedData.length; i++) {
		var ad = returnedData[i];
		var adId = ad.adId;
		var firstPicAddr = ad.firstPicAddr;
		// alert("adId:"+adId);
		// alert("firstPicAddr:"+firstPicAddr);
		var link = "PostLogical?functionName=picsOfAd&adId=" + adId;
		var html = "<td><a href='" + link
				+ "' target='_blank'><input type='image' alt='查看' src='"
				+ firstPicAddr + "' id='" + adId + "' class='img' style='width:250;height:250'/></a></td>";
		// alert(html);
		$("#ads tr:last").append(html);
		count++;
		if (count % 5 == 0) {// 到了五个则换行
			$("#ads").append("</tr><tr> ");
		}
	} 
}

function scroll(obj){
	var uls = obj.getElementsByTagName('ul');
	var ul_1 = uls[0],
		ul_2 = uls[1];
	getScrollAds(obj,ul_1);
	getScrollAds(obj,ul_2,true);
}

function scroll_start(obj){
	if(obj.getElementsByTagName('li')[0]!==undefined){
		var li_wid = Math.ceil(obj.getElementsByTagName('li')[0].offsetWidth),
			ul_wid = Math.ceil(obj.getElementsByTagName('ul')[0].offsetWidth);
		var timer = setInterval(function(){
			scroll_step(obj,timer,ul_wid,li_wid);
		},5);
	}else{
		console.log('load error!');
	}
}

function getScrollAds(obj,ul_obj,flag=false){
	var postId = $("#postId").val();
	var num = 10;
	var url = `PostLogical?functionName=getScrollAds&postId=${postId}&num=${num}&money=0`;
	var ul_html = '';
	$.get(url,function(data){
		for(var i = 0;i<data.length;i++){  
			var li_html = `<li><a href="#"><img src="${data[i]}"></a></li>`;
			ul_html += li_html;
		}
		console.log(data.length);
		if(data.length<num){
			var n = num-data.length;
			for(var j=0;j<n;j++){
				var li_html_ = `<li><a href="#"><img src="${data[j]}"></a></li>`;
				ul_html += li_html_;
			}
		}
		ul_obj.innerHTML = ul_html;
		if(flag==true){
			scroll_start(obj);
		}
	});
}

function scroll_step(obj,timer,ul_wid,li_wid){
	var uls = obj.getElementsByTagName('ul');
	var ul_1 = uls[0],
		ul_2 = uls[1];

	if(obj.scrollLeft>= ul_wid){
		ul_1.innerHTML = ul_2.innerHTML;
		obj.scrollLeft = 0;
		getScrollAds(obj,ul_2); 
	}
	if(obj.scrollLeft % li_wid == 0){
		clearInterval(timer);
		setTimeout(function(){
			scroll_start(obj);
		},1000);
	}
	obj.scrollLeft ++;
	
}

/*function col_1(){
	var col_1 = document.getElementById('col_1'),
		col_2 = document.getElementById('col_2'),
		col_3 = document.getElementById('col_3');
	col_2.style.display = 'none';
	col_3.style.display = 'none';
}

function col_2(){
	var col_1 = document.getElementById('col_1'),
		col_2 = document.getElementById('col_2'),
		col_3 = document.getElementById('col_3');
	col_2.innerHTML = col_1.innerHTML;
	col_2.style.display = 'block';
	col_3.style.display = 'none';
}

function col_3(){
	var col_1 = document.getElementById('col_1'),
		col_2 = document.getElementById('col_2'),
		col_3 = document.getElementById('col_3');
	col_2.innerHTML = col_1.innerHTML;
	col_3.innerHTML = col_1.innerHTML;
	col_2.style.display = 'block';
	col_3.style.display = 'block';
}*/