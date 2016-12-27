function check() {
	//alert("check");
	var postId = $('#selectedPostId').val();// 隐藏域中记录的粘贴栏Id
	var adTypeId = $('#selectedAdTypeId').val();// 隐藏域中记录的粘贴栏Id
	var postName = $('#selectedPostName').val();// 隐藏域中记录的粘贴栏Id
	var adTypeName = $('#selectedAdTypeName').val();// 隐藏域中记录的粘贴栏Id
	// alert(postName+":"+adTypeName);
	if (adTypeId == "" || adTypeId == null||adTypeName == "" || adTypeName == null) {
		alert("请先选择要上传的广告类别");
		return false;
	}
	if (postId == null || postId == ""|| postName==null||postName=="") {
		alert("请先选择要上传的粘贴栏");
		return false;
	}
	return true;
}
function deleteAll(){//删除所有图片
	$("#ImgList").html("");
}

function checkRemark(){//限制备注的长度
	var remark=$("#remark").val();
	if(remark.length>100){
		alert('备注最多为100个字');
		$("#remark").val('');
	}
}
function checkPayment(){
    var select_obj = document.getElementsByName('payment'); 
   var temp_select = false;   
    for(var i = 0; i < select_obj.length; i ++){   
         if(select_obj[i].checked){   
             var select = select_obj[i].value;   
             temp_select = true;   
             break;   
         }   
    }   
    if(temp_select == false){   
        alert('请选择是否滚屏显示');   
        return false;   
    }
    return true;   
}
function checkImageNum(){//检查上传文件个数
	var imageNum=$(":image").size();
	if(imageNum>10){
		alert('最多只能上传十个图片'); 
		return false;
	}
	if(imageNum<=0){
		alert('您没有上传任何图片'); 
		return false;
	}
	return true;
}