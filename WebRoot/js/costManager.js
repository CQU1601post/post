$(function(){
    $(".costManager_insert").click(function(){
        $('#insertModal').draggable();
        $('#insertModal').modal('show'); 
    });  
});


$(document).ready(function() {
  
    $('#example-order-button-insert').on('click', function() {
        var insertGrade=$("#insertGrade").val();
        var insertMoney=  $("#insertMoney").val();
        var insertTime=$("#insertTime").val();
        if(isInteger(insertGrade)&&isInteger(insertMoney)&&isInteger(insertTime)){
       $.ajax({
           type:"get",
           url:"AdminManagerLogical?info=addCostManager&grade="+insertGrade+"&money="+insertMoney+"&time="+insertTime,
           success:function(data){
               $("#insertGrade").val("");
               $("#insertMoney").val("");
               $("#insertTime").val("");
               if(data=="1"){
                   $('#insertModal').modal('hide');
                   alert("添加成功");
               }else{         
                   alert("添加失败");
                   
               }              
           }      
       });
        }else{
            alert("请重新输入");
        }
      
    });
    
    $('#example-order-button-update').on('click', function() {
        var costId= $("#updateModel-Hidden-Id").val();
        var updateGrade=$("#updateGrade").val();
        var updateMoney=  $("#updateMoney").val();
        var updateTime=$("#updateTime").val();     
        if(isInteger(updateGrade)&&isInteger(updateMoney)&&isInteger(updateTime)){
            $.ajax({
                type:"get",
                url:"AdminManagerLogical?info=updateCostManager&grade="+updateGrade+"&money="+updateMoney+"&time="+updateTime+"&costId="+costId,
                success:function(data){
                    $("#updateGrade").val("");
                    $("#updateMoney").val("");
                    $("#updateTime").val("");     
                    if(data=="1"){
                        $('#updateModal').modal('hide');
                        alert("更新成功");
                    }else{                    
                        alert("更新失败");
                    }
                   
                }      
            });
        }else{
            alert("请重新输入");
        }
      
    });

    $('#example-order-button-delete').on('click', function() {
        var costId= $("#deleteModel-Hidden-Id").val();
        
        $.ajax({
            type:"get",
            url:"AdminManagerLogical?info=deleteCostManager&costId="+costId,
            success:function(data){
                $('#deleteModal').modal('hide');
                alert("删除成功");
            }      
        });
    });

});
