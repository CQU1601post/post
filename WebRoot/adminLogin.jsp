<%@ page  pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
<div style="margin:0 auto;width:550px;"><img src="images/logo02.png" width="252" height="180" /><span class="STYLE3">&nbsp;&nbsp;后台管理</span>
</div>
<hr width="1000px">
<hr width="1100px">
<hr width="1000px">
<form action="AdminManagerLogical?info=adminlogin" method="post" >
<table width="600" height="266" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr><td>&nbsp;&nbsp;</td></tr>
  <tr>
    <td width="200px" height="36" class="STYLE1"><div align="right" class="STYLE6">管理员：</div></td>
    <td width="397">
      <div align="left">
        <input name="name" type="text" class="STYLE1" size="20" />
      </div></td>
  </tr>
  <tr>
    <td class="STYLE1"><div align="right" class="STYLE5"><span class="STYLE6">密码</span>：</div></td>
    <td>
      <div align="left">
        <input name="password" type="password" class="STYLE1" size="20" />
      </div></td>
  </tr>
  <tr>
    <td height="65" colspan="2"><div align="center"><input type="submit" value="登录"></div></td>
  </tr>
</table>
</form>
<p class="STYLE7" align="center">${requestScope.infomation}</p>
</body>
</html>