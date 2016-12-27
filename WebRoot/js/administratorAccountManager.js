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
        if(!(isNull(updateName)||isNull(updatePassword))&&isInteger(updateLevel)){
            $.ajax({
                type:"get",
                url:"AdminManagerLogical?info=updateAdminManager&text="+text+"&updateName="+updateName+"&updateLevel="+updateLevel+"&updatePassword="+updatePassword+"&updateModelID="+updateModelID,
                success:function(data){
                    if(data=="1"){
                        $('#updateModal').modal('hide');
                        alert("更新成功");
                    }else{
                        $("#updatePassword").val("");
                        $("#updateName").val("");
                        $("#updateLevel").val("");     
                        alert("用户名重复");
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
                $('#deleteModal').modal('hide');
                alert("删除成功");
            }      
        });
    });

});
