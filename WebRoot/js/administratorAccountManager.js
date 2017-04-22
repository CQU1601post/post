$(function(){
    $(".administratorAccountManager_insert").click(function(){
        $('#insertModal').draggable();
        $('#insertModal').modal('show'); 
    });  
});


$(document).ready(function() {
    //$('.tr_two select').multiselect();
    var orderCountInsert = 0;
    var orderCountUpdate = 0;
    $('#example-multiple-selected-insert').multiselect({
        maxHeight: 100,
        onChange: function(option, checked) {
            if (checked) {
                orderCountInsert++;
                $(option).data('order', orderCountInsert);
            }
            else {
                $(option).data('order', '');
            }
        },
        buttonText: function(options) {
            if (options.length === 0) {
                return '类别';
            }
            else if (options.length > 3) {
                return options.length + ' selected';
            }
            else {
                var selected = [];
                options.each(function() {
                    selected.push([$(this).text(), $(this).data('order')]);
                });

                selected.sort(function(a, b) {
                    return a[1] - b[1];
                });

                var text = '';
                for (var i = 0; i < selected.length; i++) {
                    text += selected[i][0] + ', ';
                }

                return text.substr(0, text.length -2);
            }
        },
    });

    $('#example-multiple-selected-update').multiselect({
        maxHeight: 100,
        onChange: function(option, checked) {
            if (checked) {
                orderCountUpdate++;
                $(option).data('order',  orderCountUpdate);
            }
            else {
                $(option).data('order', '');
            }
        },
        buttonText: function(options) {
            if (options.length === 0) {
                return '类别';
            }
            else if (options.length > 3) {
                return options.length + ' selected';
            }
            else {
                var selected = [];
                options.each(function() {
                    selected.push([$(this).text(), $(this).data('order')]);
                });

                selected.sort(function(a, b) {
                    return a[1] - b[1];
                });

                var text = '';
                for (var i = 0; i < selected.length; i++) {
                    text += selected[i][0] + ', ';
                }

                return text.substr(0, text.length -2);
            }
        },
    });
    
    
    $('#example-order-button-insert').on('click', function() {
        var selected = [];
        $('#example-multiple-selected-insert option:selected').each(function() {
            selected.push([$(this).val(), $(this).data('order')]);
        });

        selected.sort(function(a, b) {
            return a[1] - b[1];
        });

        var text =selected[0][0];
        if(selected.length==1){
            text=selected[0][0];
        }else{
            for (var i = 1; i < selected.length; i++) {
                text = text+ '|'+selected[i][0] ;
            }
        }  
     
     
        var insertPassword=$("#insertPassword").val();
        var insertName=  $("#insertName").val();
        var insertLevel=$("#insertLevel").val();
        if(!(isNull(insertPassword)||isNull(insertName))&&isInteger(insertLevel)){
       $.ajax({
           type:"get",
           url:"AdminManagerLogical?info=insertAdminManager&text="+text+"&insertName="+insertName+"&insertLevel="+insertLevel+"&insertPassword="+insertPassword,
           success:function(data){
               if(data=="1"){
                   $('#insertModal').modal('hide');
                   alert("添加成功");
               }else{
                   $("#insertPassword").val("");
                   $("#insertName").val("");
                   $("#insertLevel").val("");
                   alert("用户名重复");
                   
               }
              
           }      
       });
        }else{
            alert("请重新输入");
        }
      
    });
    
    $('#example-order-button-update').on('click', function() {
        var updateModelID= $("#updateModel-Hidden-Id").val();
        var updateurl="";
        var flag=0;
        if(updateModelID=="1"){
            var updatePassword=$("#updatePassword").val();
            var updateName=  $("#updateName").val();
            var updateEmail=$("#updateEmail").val();    
            var  updateVerification=$("#updateVerification").val();    
           
            updateurl="AdminManagerLogical?info=updateAdminManager&updateVerification="+updateVerification+"&updateName="+updateName+"&updateEmail="+updateEmail+"&updatePassword="+updatePassword+"&updateModelID="+updateModelID
        }else{
            var selected = [];
            $('#example-multiple-selected-update option:selected').each(function() {
                selected.push([$(this).val(), $(this).data('order')]);
            });

            selected.sort(function(a, b) {
                return a[1] - b[1];
            });

            var text =selected[0][0];
            if(selected.length==1){
                text=selected[0][0];
            }else{
                for (var i = 1; i < selected.length; i++) {
                    text = text+ '|'+selected[i][0] ;
                }
            }  

            var updatePassword=$("#updatePassword").val();
            var updateName=  $("#updateName").val();
            var updateLevel=$("#updateLevel").val();     
            var updateEmail=$("#updateEmail").val();    
            var  updateVerification=$("#updateVerification").val();    
           updateurl= "AdminManagerLogical?info=updateAdminManager&text="+text+"&updateName="+updateName+"&updateLevel="+updateLevel+"&updatePassword="+updatePassword+"&updateModelID="+updateModelID+"&updateVerification="+updateVerification++"&updateEmail="+updateEmail;
        }
    
        if(updateModelID=="1"){
            if(!(isNull(updateName)||isNull(updatePassword)||isNull(updateVerification)||isNull(updateEmail))&&!isEmail(updateEmail)){
                flag=1;
            }
        }else{
            if(!(isNull(updateName)||isNull(updatePassword))&&isInteger(updateLevel)){
              
                flag=1;
            }
            if(!isNull(updateEmail))){
           if(isNull(updateVerification)||!isEmail(updateEmail)){
               flag=1;
           }
           
            }
        }
        if(flag==1){
            $.ajax({
                type:"get",
                url:updateurl,
                success:function(data){
                    if(data=="1"||data=="2"){
                        $('#updateModal').modal('hide');
                        alert("更新成功");
                    }else if(data=="3"){
                        alert("邮箱验证失败");
                    }   else if(data=="4"){
                        alert("验证码过期");
                    }  else if(data=="5"){
                        alert("不是验证的邮箱");
                    }
                    else{
                        $("#updatePassword").val("");
                        $("#updateName").val("");
                        $("#updateLevel").val("");     
                        $("#updateEmail").val("");    
                        $("#updateVerification").val(""); 
                        alert("用户名重复");
                    }
                   
                }      
            });
        }else{
            alert("请重新输入");
        }
      
    });

    
    $('#example-order-button-update-verification').on('click', function() {
        var updateModelID= $("#updateModel-Hidden-Id").val();
      
        
        var updateEmail=$("#updateEmail").val();     
        if(!(isNull(updateEmail))&&isEmail(updateEmail)){
            $.ajax({
                type:"get",
                url:"VerificationCode?info=sendEmail&updateEmail="+updateEmail+"&updateModelID="+updateModelID,
                success:function(data){
                    if(data=="0"){
              
                        alert("发送成功，请到邮箱中查看你的验证码");
                    }else if(data="1"){
                        alert("输入为空重复");
                    }else if(data="2"){
                        alert("邮件发送失败");
                    }
                   
                }      
            });
        }else{
            alert("请重新输入");
        }
      
    });
    $('#example-order-button-delete').on('click', function() {
        var deleteModelID= $("#deleteModel-Hidden-Id").val();
        
        $.ajax({
            type:"get",
            url:"AdminManagerLogical?info=deleteAdminManager&deleteModelID="+deleteModelID,
            success:function(data){
                if(data=="1"){
                    $('#deleteModal').modal('hide');
                    alert("删除成功");
                }else{
                    
                    alert("唯一的超级管理员不能删除");
                }
                
              
            }      
        });
    });

});
