<%@ page  pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
    <base href="<%=basePath%>">
    
    <title>找回密码</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>

<title>管理</title>
<script type="text/javascript">
    function changeImg() {
        var imgSrc = $("#codeImg");
        var src = imgSrc.attr("src");
        imgSrc.attr("src", chaUrl(src));
    }
    function chaUrl(src) {
        var time = (new Date()).valueOf();
        src = src.substring(0, 29);
       
            src = src + "&time=" + time;
        
       
        return src;
    }
</script>

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
<form action="AdminManagerLogical?info=findPassword" method="post" >
<table width="600" height="266" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr><td>&nbsp;&nbsp;</td></tr>
  <tr>
    <td width="200px" height="36" class="STYLE1"><div align="right" class="STYLE6">请输入账号：</div></td>
    <input type="hidden" value="${ userInformation }" name="userInformation"/>
    <td width="397">
      <div align="left">
         <input name="name" type="text" class="STYLE1" size="20" />
      </div></td>
  </tr>
 
   <tr>
                <td class="STYLE1"><div align="right"
                        class="STYLE5"
                    >
                        <span class="STYLE6">验证码</span>：
                    </div></td>
                <td>
                    <div align="left">
                        <input type=“text” name="code" id="code"> <img
                            id="codeImg" alt="验证码"
                            src="VerificationCode?info=getCode" onclick="changeImg()"
                        />
                    </div>
                </td>
            </tr>
  
  <tr>
    <td height="65" colspan="2"><div align="center"><input type="submit" value="查询"></div></td>
  </tr>
</table>
</form>
<p class="STYLE7" align="center">${requestScope.infomation}</p>
</body>

</html>
