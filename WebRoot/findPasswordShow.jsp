<%@ page  pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>管理</title>



<style type="text/css">
<!--
.STYLE1 {
    font-family: "宋体";
    font-size: 20px;
}
.STYLE3 {
    font-size:3.5em;
    color: #FF8040;
    font-family: Georgia, "Times New Roman", Times, serif;
    top:-30px;
}
.STYLE4 {font-family: "宋体"; font-size: 24px; }
.STYLE5 {font-size: 24px}
.STYLE6 {font-size: 18px; }
.STYLE7 {
    font-family: "宋体";
    font-size: 20px;
    color:red;
}
a:link {
    text-decoration: none;
}
a:visited {
    text-decoration: none;
}
a:hover {
    text-decoration: none;
}
a:active {
    text-decoration: none;
}
-->
</style>
</head>

<body>
<p><br></p>
<div style="margin:0 auto;width:550px;"><img src="images/logo02.png" width="252" height="180" /><span class="STYLE3">&nbsp;&nbsp;找回密码</span>
</div>
<hr width="1000px">
<hr width="1100px">
<hr width="1000px">
<div>
你的密码是 ${password }
</div>
</body>

</html>
