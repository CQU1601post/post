<%@ page pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8" language="java"
    import="java.sql.*"
%>
<%@ page language="java" import="java.util.*"%>
<jsp:directive.page import="allClasses.*" />
<jsp:directive.page import="jdbc.*" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
SearchAboutPost searchAboutPost=new SearchAboutPost();
List costs=searchAboutPost.getCost();
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<style type="text/css">
.button{
width: 80px;
line-height: 30px;
text-align: center;
font-weight: bold;
color: #fff;
text-shadow:1px 1px 1px #333;
border-radius: 5px;
/* margin:0 20px 20px 0; */
margin-top:50px;
margin-left:25px;
position: relative;
overflow: hidden;
}
.gray{
    color: #8c96a0;
    text-shadow:1px 1px 1px #fff;
    border:1px solid #dce1e6;
    box-shadow: 0 1px 2px #fff inset,0 -1px 0 #a8abae inset;
    background: -webkit-linear-gradient(top,#f2f3f7,#e4e8ec);
    background: -moz-linear-gradient(top,#f2f3f7,#e4e8ec);
    background: linear-gradient(top,#f2f3f7,#e4e8ec);
}
.gray:hover{
    background: -webkit-linear-gradient(top,#fefefe,#ebeced);
    background: -moz-linear-gradient(top,#f2f3f7,#ebeced);
    background: linear-gradient(top,#f2f3f7,#ebeced);
}


</style>
</head>
<body >
<div style="color:white;background-color:#666666;height:60px;line-height:60px;;font-size:1.3em;font-family:Microsoft YaHei;font-size:1.5em;">
<table>
    <tr>
       <td width="150px"><img src="images/logo02.png" width="60" height="55" float="left"/><div float="left" width="200px"></td>
       <td>滚屏显示支付页面</td>
    </tr>
</table>
</div>

<div style="height:50px;font-size:1.2em;font-family:Microsoft YaHei;margin-top:30px;">
&nbsp;&nbsp;&nbsp;滚屏等级：
 <%
 
                       for (Iterator iterator =   costs .iterator(); iterator
                                .hasNext();) {
                           Cost cost = (Cost) iterator.next();       
                                
                        %>
                        &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="pay_level" value="<%=cost.getGrade() %>" ><%=cost.getMoney() %></input>
                        
                        <%
                            }
                        %>
<!--     &nbsp;<input type="radio" name="pay_level" value="first" >一等200￥</input>
    &nbsp;&nbsp;<input type="radio" name="pay_level" value="second">二等100￥</input>
    &nbsp;&nbsp;<input type="radio" name="pay_level" value="third">三等50￥</input><br> -->
<br>
<br>
<div style="background-color:#F0F0F0;opacity:0.8;margin:0 auto;border-bottom:1px solid #D6D6D6; border-top:1px solid #D6D6D6;height:10px;">
</div>
<div style="font-family:Microsoft YaHei;margin-top:20px;font-size:1em;">
&nbsp;&nbsp;&nbsp;支付方式：<br><br>
<center>
<table>
    <tr>
        <td width="60px"><img src="css/images/payment_1.png" width="50px" height="40px"></img></td>
        <td width="200px">支付宝支付</td>
        <td><input type="radio" name="pay_type" value="1" style="line-height: 50px;"></input></td>
    <tr>
     <tr>
        <td width="60px"><img src="css/images/wechat.jpg" width="50px" height="40px"></img></td>
         <td width="200px">微信支付</td>
        <td><input type="radio" name="pay_type" value="2"></input></td>
    <tr>
    <tr>
        <td width="60px"><img src="css/images/payment_2.png" width="50px" height="40px"></img></td>
        <td width="200px">银联支付</td>
        <td><input type="radio" name="pay_type" value="2"></input></td>
    <tr>
   
</table>
    <button id="sure" class="button gray">确认支付</button>
    <button id="cancel" class="button gray">取消</button>
</center>
</div>

        <script src="js/jquery-1.8.2.js"></script>
            <script src="layer/layer.js"></script>  
            <script type="text/javascript">
                $('#sure').click(function(){
                    var val1=$('input:radio[name="pay_level"]:checked').val();
                    var val2=$('input:radio[name="pay_type"]:checked').val();
                    if(val1==null){
                        layer.msg('请选择滚屏显示等级',{time:1500});
                        return;
                    }
                    if(val2==null){
                         layer.msg('请选择支付方式',{time:1500});
                        return;
                        }
                    else{
                        $.ajax({
                            type:"get",
                            url : "PostLogical?functionName=addMoney&money="+val1,
                             success:function(data){
                                 if(data=="1"){
                                     var index = parent.layer.getFrameIndex(window.name);
                                     window.parent.layer.close(index);
                                     alert("支付成功");
                                 }else{
                                     alert("支付失败");
                                 }
                               
                             },
                        });
                        //window.parent.location.reload();
                        /* window.parent.location.href = "upload_seq.jsp?adTypeId="+adTypeId+"&postId="+postId+"&postName="+postName+"&adTypeName="+adTypeName;
                        var index = parent.layer.getFrameIndex(window.name);
                        window.parent.layer.close(index); */
                    }
                });
                $('#cancel').click(function(){
                      /*   window.parent.location.reload(); */
                        var index = parent.layer.getFrameIndex(window.name);
                        window.parent.layer.close(index);
                });
            </script>
<!-- <div style="margin-top:10px;height:50px;color:red;font-size:15px;font-family:Microsoft YaHei;">
<br>
说明:
一等显示，可以让你的广告最多出现在滚动栏，滚动显示一周；<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二等显示，可以让你的广告次多出现在滚动栏，滚动显示5天；<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三等显示，可以让你滚动显示3天。
</div> -->
</body>
</html>