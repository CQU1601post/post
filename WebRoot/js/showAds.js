
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
	ul_2.innerHTML = ul_1.innerHTML;
	var timer = setInterval(function(){
		scroll_step(obj,timer);
	},5);
}

function scroll_step(obj,timer){
	var li_wid = Math.ceil(obj.getElementsByTagName('li')[0].offsetWidth),
		ul_wid = Math.ceil(obj.getElementsByTagName('ul')[0].offsetWidth),
		obj_wid = Math.ceil(obj.offsetWidth);
	
	if(obj.scrollLeft>= ul_wid){
		obj.scrollLeft = 0; 
	}
	if(obj.scrollLeft % li_wid == 0){
		clearInterval(timer);
		setTimeout(function(){
			scroll(obj);
		},1000);
	}
	obj.scrollLeft ++;
}

function col_1(){
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
}