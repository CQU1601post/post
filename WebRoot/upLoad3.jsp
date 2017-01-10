<%@ page pageEncoding="utf-8" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*"%> 
<%@ page language="java" import="java.util.*"%>  
<jsp:directive.page import="allClasses.*" /> 
<jsp:directive.page import="jdbc.*" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="css/upload.css" type="text/css">
    <title>upLoad ads</title>
    <script type='text/javascript'>
        function goBack(){
            history.go(-2);
        }
    </script>
</head>
<body>
<script src="js/jquery-1.8.2.js"></script> 
<script src="layer/layer.js"></script>  
<!-- <script type='text/javascript'>
     function getUrlParam(name) {
          var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
          var r = window.location.search.substr(1).match(reg);  //匹配目标参数
          if (r != null) return unescape(r[2]); 
          return null; //返回参数值
     }
    var index = parent.layer.getFrameIndex(window.name);
    //var user = ${sessionScope.user};
    $(document).ready(function(){ 
        var urlParam = window.location.search;
        var value = urlParam.substr(9);
    /*     alert("user"+user);
        if(user==null)
        {
              layer.open({
                  type: 2,
                  title: '登录',
                  closeBtn: 0,
                  maxmin: true,
                  area : ['800px' , '650px'],
                  content: 'login.jsp',
              });
        } */
        if(value=="yes")
        {
             layer.open({
                  type: 2,
                  title: 0,
                  closeBtn: 0,
                  /* maxmin: true, */
                  skin: 'layui-layer-rim', //加上边框
                  area : ['520px' , '500px'],
                  content: ['payment.jsp','no']
              });
        }
        
    });  
    </script> -->
<div class="step">
<!-- <div class="not_current">
第一步：选择上传广告的分类
</div>
<div class="not_current">
第二步：选择上传的图片
</div> -->
<div class="current_step">
第三步：完成上传
</div>
</div>

<div class="upload_result">
<p>恭喜您上传成功！</p>
<!-- 此处返回的应该是进来的地方，history.go(-2) -->
<input type='button' value="  继续上传"" class="button" onclick="window.open('upLoad1.jsp','_self')">
<input type="button" value="返回首页" class="button" onclick="window.open('index.jsp','_self')">  
</div>

</body>
</html>