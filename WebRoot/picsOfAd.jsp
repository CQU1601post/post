<%@ page pageEncoding="utf-8" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*"%> 
<%@ page language="java" import="java.util.*"%>  
<jsp:directive.page import="allClasses.Pic" /> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List pics=(List)request.getAttribute("pics");
System.out.println("pics:"+pics.size());
Object privateColumn=request.getAttribute("privateColumn");
System.out.print(privateColumn);
Object costMark=request.getAttribute("costMark");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>show pics of ad</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
  <link rel="stylesheet" type="text/css" href="css/picsOfAd/jquery.ad-gallery.css">
  <link rel="stylesheet" type="text/css" href="css/picsOfAd/post_images.css">
   <link rel="stylesheet" type="text/css" href="css/picsOfAd/littlePics.css">
  <!-- <script type="text/javascript" src="js/picsOfAd/jquery.min.js"></script> -->
  <script type="text/javascript" src="js/jquery-1.8.2.js" ></script>
  <script type="text/javascript" src="layer/layer.js"></script> 
  <script type="text/javascript" src="js/picsOfAd/jquery.ad-gallery.js"></script>
  <script type="text/javascript" src="js/picsOfAd/zzsc.js"></script>
  <style type="text/css">
    .button{width:120px; height:35px;border-radius:3px 3px 3px 3px; border:1px solid #FF8C69; background-color:#FF8C69; cursor:pointer;color:#f3f3f3;font-size:1.5em;font-family:Microsoft YaHei; } 
    .button:hover{opacity:0.7;}
  </style>
  </head>
  
 <body>
 <c:if test="${pics.size()>0}"><!-- 有图片则部署展示样式 -->
 <center>
    <div id="gallery" class="ad-gallery">
      <div class="ad-image-wrapper">
      </div>
      <div class="ad-nav">
        <div class="ad-thumbs">
          <ul class="ad-thumb-list">
            <c:forEach var="pic" items="${pics}">  
              <li> 
                <a href="${pic.picAddr}">
                 <img src="${pic.picAddr}" class="littlePic">
                </a> 
              </li> 
            </c:forEach>   
          </ul>
        </div>
      </div>
    </div>

  </center>
</c:if>
<c:if  test="${pics.size()<=0}"><!-- 用户可能从地址栏直接输入而非按步骤操作，会导致对应广告没有图片 -->
        <table align="center"><tr align="center" > 您所选择的广告为空</tr></table>        
</c:if>

<c:if test="${pics.size()>0}"><!-- 要存在图片 -->
<c:if test="${pics[0].checked>0}"><!-- 已审核 -->
<c:if test="${privateColumn=='0'}"><!-- 判断是否是专栏-->
<c:if test="${costMark=='0'}"><!-- 判断是否收费-->
<center>

<div style="margin-top:50px;width:850px;hight:30px;float:right">
<button class="button gray" id="payment">滚屏显示</button>
</div>
            <script>
            var index = parent.layer.getFrameIndex(window.name);
                 $('#payment').on('click', function(){
                   layer.open({
                  type: 2,
                  title: 0,
                  closeBtn: 0,
                  /* maxmin: true, */
                  skin: 'layui-layer-rim', //加上边框
                  area : ['520px' , '500px'],
                  content: ['payment.jsp','no']
                    });
                });
            </script>
</center>
</c:if>
</c:if>

</c:if>
</c:if>



</body>
</html>
