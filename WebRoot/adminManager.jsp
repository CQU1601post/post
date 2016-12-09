<%@page import="java.util.ArrayList"%>
<%@page import="javax.enterprise.context.*"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"
    import="java.sql.*" errorPage=""
%>
<jsp:directive.page import="java.util.List" />
<jsp:directive.page import="jdbc.OperationData" />
<jsp:directive.page import="allClasses.*" />
<%
    String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List adList=new ArrayList();
List<String > postList=new ArrayList<String>();
List noauditlist=(List)request.getAttribute("noauditlist");
List auditlist=(List)request.getAttribute("auditlist");
List<String> scopeList=new ArrayList<String>();
Object  audit=request.getAttribute("audit");
System.out.print("audit"+audit);

Administrator administrator=(Administrator)request.getSession().getAttribute("adminInfo");
if(administrator.getLevel()==1){
    String[] scopes=administrator.getScope().split("\\|");
    for(int i=0;i<scopes.length;i++){
        scopeList.add(scopes[i]);
    }
    postList=new OperationData().postTypes(scopeList);
    adList=new OperationData().query_adType(scopeList); 
}
if(administrator.getLevel()==0){
  //获取信息类别
    adList=new OperationData().query_adType(); 
   //List pasteType=new OperationData().publicPasteType();
    postList=new  OperationData().postTypes();
}
   



%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/adminManager1.js"></script>
<link href="css/adminManager.css" rel="stylesheet" type="text/css" />
<!--  <link href="css1/imgbubbles.css" rel="stylesheet" type="text/css" />-->

<style type="text/css">
.pic-wrapper {
    margin: 0 auto;
}

.pic-wrapper li {
    display: inline-block;
}
</style>

<!-- <script type="text/javascript" src="js/imgbubbles.js"></script> -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>

<body>
    <jsp:include page="managertop.jsp" flush="true" />
    <script type="text/javascript">
                    function check(formObj) {
                        //alert("0000");
                        var str = "checked";
                        // alert("1111");
                        for ( var i = 0; i < formObj.length; i++) {

                            if (formObj[i].checked) {
                                str = formObj[i].value;

                            }
                        }
                        if (str == "checked") {
                            alert("单选框未选中");
                        } else {
                            //alert("提交表单");
                            document.getElementById('form1').submit();
                        }
                    }
                </script>

    <script type="text/javascript">
                    /*
                     function selectPrint(form_id,abmfldid,workid){  
                     alert("aaa");   
                     var objS = document.getElementById("pasteType");
                     alert("bb");  
                     var selectid = objS.options[objS.selectedIndex].select_name;    
                     alert("ttt");     
                    
                     if(selectid.equals("重大12舍")){
                     openDataReport();
                     }else if(selectid==2){     
                     printForm();  
                     }
                    
                     }               
                     */
                </script>

    <c:if test="${audit!=null }">
        <input type="hidden" value="<%=audit%>" class="indirect_audit" />
    </c:if>

    <form action="AdminManagerLogical?info=auditInfo" method="post"
        id="form1" name="formName"
    >
        <table style="margin:0 auto;width:1250px;">

            <tr>
                <td align="center" class="adminManager_table_td"><input
                    type="radio" value="未审核" name="audit"
                    class="adminManager_table_td_noaudit"
                />未审核 <input type="radio" value="已审核" name="audit"
                    class="adminManager_table_td_audit"
                />已审核</td>
                <td><select name="adType" id="adType">
                        <%
                            for(int i=0;i<adList.size();i++)
                                                  {
                                                       AdType type=(AdType)adList.get(i);
                        %>
                        <option value="<%=type.getAdTypeName()%>"><%=type.getAdTypeName()%></option>

                        <%
                            }
                        %>
                        <option value="所有广告">所有广告</option>
                </select></td>
                <td><select name="pasteType" id="pasteType">
                        <option value="所有粘贴栏">所有粘贴栏</option>
                        <%
                            for(int i=0;i<postList.size();i++)
                                                                                                                                             {
                                                                                                                                                String postName=postList.get(i);
                        %>
                        <option value="<%=postName%>">
                            <%=postName%>
                        </option>
                        <%
                            }
                        %>

                </select></td>
                <td><select name="adTime" id="adTime">

                        <option value="近一周">近一周</option>
                        <option value="近一个月">近一个月</option>
                        <option value="近三个月">近三个月</option>
                </select></td>
                <td><input type="button" value="展示"
                    class="adminManager_table_radio_button"
                /></td>
                <td>全选<input type="radio" name="adminManager_radio"
                    class="adminManager_table_radio_allChoice"
                />反选<input type="radio" name="adminManager_radio"
                    class="adminManager_table_radio_inverseChoice"
                /></td>
                <td><a href="javascript:void(0)"
                    class="adminManager_table_a_delete"
                >批量删除</a></td>

                <td><a href="AdminManagerLogical?info=allBy">全部通过审核</a></td>
                <td><lable>定时删除开关</lable></td>
                <td><label><input
                        class="adminManager_table_mui-switch mui-switch-animbg"
                        type="checkbox"
                    ></label></td>
                <td><a href="javascript:void(0)"
                    class="adminManager_table_a_insert"
                >批量审核</a></td>
            </tr>
            <tr>
            </tr>
            <tr>

            </tr>



            <tr>
                <br>
                <br>
            </tr>
        </table>
    </form>

    <table style="margin:0 auto;width:1250px;" class="pic-wrapper">
        <tr>
            <td id="more">
                <div id="d">
                    <ul id="squares" class="bubblewrap">
                        <c:if test="${noauditlist!=null }">
                            <%
                                int index = 0;
                                for(int i=0;i<noauditlist.size();i++)
                                                                         {
                                                                            Pic p=(Pic)noauditlist.get(i);
                                                                            int currentAdId;
                                                                            int nextAdId;
                                                                            
                                                                            currentAdId = p.getAdId();
                                                                            if(i == noauditlist.size()-1)
                                                                            {
                                                                                 nextAdId = -1;
                                                                            }
                                                                            else{
                                                                                System.out.println("=============="+i);
                                                                                Pic nextPic=(Pic)noauditlist.get(i+1);
                                                                                nextAdId = nextPic.getAdId();
                                                                            }
                                                                            String[] colorArray = {"#6B8E23","#A52A2A"};
                            %>
                            <li>
                                <div class="picShow">
                                    <img src="<%=p.getPicAddr()%>"
                                        width="200" height="200"
                                    />
                                    <div class="deletePic">
                                        <span
                                         style="float:left;margin-left:20px;margin-top:5px;background:<%=colorArray[index%2]%>;opacity:0.8;width:10px;height:10px;border-radius:50%" 
                                        >&nbsp;</span>
                                        <%
                                            if(currentAdId!=nextAdId)
                                                                                                {
                                                index = index + 1;
                                        %>
                                        <input type="hidden"
                                            class="adminManager_table_noaudit_hidden_Adid"
                                            value=<%=p.getAdId()%>
                                        /> <a
                                            href="AdminManagerLogical?info=auditBy&adId=<%=p.getAdId()%>"
                                        >通过</a> <a
                                            href="AdminManagerLogical?info=auditnoBy&adId=<%=p.getAdId()%>"
                                        >删除</a> <input type="checkbox"
                                            class="adminManager_table_noaudit_input_checkbox"
                                        />
                                        <%
                                            }
                                        %>
                                    </div>
                                </div> <%
     }
 %>
                            </li>
                        </c:if>

                        <c:if test="${auditlist!=null }">
                            <%
                                int index = 0;
                                for(int i=0;i<auditlist.size();i++)
                                                                        {
                                                                            Pic p=(Pic)auditlist.get(i);
                                                                            int currentAdId;
                                                                            int nextAdId;
                                                                            
                                                                            currentAdId = p.getAdId();
                                                                            if(i == auditlist.size()-1)
                                                                            {
                                                                                 nextAdId = -1;
                                                                            }
                                                                            else{
                                                                                Pic nextPic=(Pic)auditlist.get(i+1);
                                                                                nextAdId = nextPic.getAdId();
                                                                            }
                                                                            String[] colorArray = {"#6B8E23","#A52A2A"};
                            %>
                            <li>
                                <div class="picShow">
                                    <img src="<%=p.getPicAddr()%>"
                                        width="200" height="200"
                                    />

                                    <div class="deletePic">
                                        <span
                                          style="float:left;margin-left:20px;margin-top:5px;background:<%=colorArray[index%2]%>;opacity:0.8;width:10px;height:10px;border-radius:50%"
                                        >&nbsp;</span>
                                        <%
                                            if(currentAdId!=nextAdId)
                                                    {
                                                index = index + 1;
                                        %>
                                        <input type="hidden"
                                            class="adminManager_table_audit_hidden_Adid"
                                            value=<%=p.getAdId()%>
                                        /> <a class="delete"
                                            href="AdminManagerLogical?info=delInfo&adId=<%=p.getAdId()%>"
                                        >删除</a> <input type="checkbox"
                                            class="adminManager_table_audit_input_checkbox"
                                        />
                                        <%
                                            }
                                        %>
                                    </div>

                                </div>

                            </li>

                            <%
                                }
                            %>
                        </c:if>
                    </ul>
                </div>
            </td>
        </tr>

    </table>

    <script type="text/javascript">
                    //alert(window.screen.width  );
                    enLarge();
                    function enLarge() {
                        jQuery(document).ready(function($) {
                            //$('ul#orbs').imgbubbles({factor:1.75}) //add bubbles effect to UL id="orbs"
                            $('ul#squares').imgbubbles({
                                factor : 1.85
                            }) //add bubbles effect to UL id="squares"
                        })
                    }
                </script>
</body>
</html>
