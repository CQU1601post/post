<%@page import="allClasses.BrowserControl"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    List<BrowserControl> browserControls=(List<BrowserControl>)request.getAttribute("browserControls");
   
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>浏览器图片数量管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/adminManager.css" rel="stylesheet" type="text/css" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src='js/bootstrap.min.js'></script>
<script type="text/javascript" src="js/validation.js"></script>
<script type="text/javascript">
$(function(){
    $('#example-order-button-update').on('click', function() {
        var id= $("#updateModel-Hidden-Id").val();
        var updatePicNum=$("#updatePicNum").val();
      
        if(isInteger(updatePicNum)&&updatePicNum.length<3){
            $.ajax({
                type:"get",
                url:"AdminManagerLogical?info=updateBrowserManager&updatePicNum="+updatePicNum+"&id="+id,
                success:function(data){
                    $("#updateModel-Hidden-Id").val("");
                    $("#updatePicNum").val(""); 
                    if(data=="成功"){
                        $('#updateModal').modal('hide');
                        alert("更新成功");
                    }else{             
                        $('#updateModal').modal('hide');
                        alert("更新失败");
                    }
                   
                }      
            });
        }else{
            alert("请重新输入");
        }
      
    });
});
 
function updateModel(id){
    $("#updateModel-Hidden-Id").val(id);
    $('#updateModal').modal('show');
    $('#updateModal').draggable();
}
 
</script>
<style type="text/css">

.modal.fade {
top: -100%;  
-webkit-transition: opacity 0.3s linear, top 0.3s ease-out;
-moz-transition: opacity 0.3s linear, top 0.3s ease-out;
-o-transition: opacity 0.3s linear, top 0.3s ease-out;
transition: opacity 0.3s linear, top 0.3s ease-out;
}
</style>
</head>

<body>
    <jsp:include page="managertop.jsp" flush="true" />
  <table class="top_logo">
   <tr>
    <td class="STYLE1"><div align="center"><span class="STYLE7">浏览器图片数量管理</span></div></td>
   
  </tr>
 </table>
 <br>
  
   
    <table class="table_content">
        <tr class="tr_one">
            <td width="150" align="center">编号</td>
        
            <td width="150" align="center">图片数量</td>
           
            <td width="200" align="center">操作</td>
        </tr>
        <c:if test="${browserControls!=null }">
            <%
                for (int j = 0; j < browserControls.size(); j++) {
                    BrowserControl a = (BrowserControl) browserControls.get(j);
                    
            %>
            <tr class="tr_two">
                <td width="150" align="center"><%=a.getId()%></td>
                <td width="150" align="center"><%=a.getRow()%></td>
               
                <td bgcolor="#D1EEEE" align="center">
                    <table width="200">
                        <tr align="center">
                            <td width="100" align="center"><a
                                href="javascript:void(0)" onclick="updateModel('<%=a.getId()%>')"
                                class="browserPicNumManager_update" 
                            >修改</a></td>

                           
                        </tr>
                    </table>
                </td>
            </tr>
            <%
                }
            %>
        </c:if>
    </table>


 



    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
        aria-labelledby="updateModalLabel" aria-hidden="true"
    >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #428bca;">
                    <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true"
                    >&times;</button>
                    <h4 class="modal-title" id="updateModalLabel">
                        更新</h4>
                </div>
                <div class="modal-body ">
                 <input type="hidden" id="updateModel-Hidden-Id">
                <div style="display:inline">
               <label class="col-sm-3 col-md-3  col-lg-3 control-label" style="display:inline">级别</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-sm-9 col-md-9 col-lg-9" style="display:inline">
                    <input type="text" class="form-control" id="updatePicNum"
                           placeholder="请输入新数量" onclick="$(this).focus()">
                </div></div><br>
                 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                        data-dismiss="modal"
                    >关闭</button>
                    <button type="button" class="btn btn-primary" id="example-order-button-update">
                        提交更改</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal -->
    </div>
   
</html>
