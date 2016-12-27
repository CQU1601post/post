$(function() {
    $(".adminManager_table_radio_allChoice").click(function() {

        var allnoauditChoice = $(".adminManager_table_noaudit_input_checkbox");
        for ( var i = 0; i < allnoauditChoice.length; i++) {
            allnoauditChoice[i].checked = true;
        }
        var allauditChoice=$(".adminManager_table_audit_input_checkbox");
        for ( var i = 0; i < allauditChoice.length; i++) {
            allauditChoice[i].checked = true;
        }

    });
    $(".adminManager_table_radio_inverseChoice").click(function() {

        var inverseNoAuditChoice = $(".adminManager_table_noaudit_input_checkbox");
        for ( var i = 0; i <inverseNoAuditChoice.length; i++) {
            if (inverseNoAuditChoice[i].checked == true) {
                inverseNoAuditChoice[i].checked = false;
            } else {
                inverseNoAuditChoice[i].checked = true;
            }
        }
        var inverseAuditChoice=$(".adminManager_table_audit_input_checkbox");
        for ( var i = 0; i <inverseAuditChoice.length; i++) {
            if (inverseAuditChoice[i].checked == true) {
                inverseAuditChoice[i].checked = false;
            } else {
                inverseAuditChoice[i].checked = true;
            }
        }
    });
   
    $(".adminManager_table_radio_button").click(function(){
       
        var Audit=  $(
        '.adminManager_table_td input[name="audit"]:checked')
        .val();
        
        if (Audit== null) {
            alert("单选框未选中");
        } else {
            //alert("提交表单");
            document.getElementById('form1').submit();
        }
    });
  
   
    
    $(".adminManager_table_a_delete").click(function() {
        if (confirm("Are you sure?")) {

            var noAuditChoice = $(".adminManager_table_noaudit_input_checkbox");
            var auditChoice=$(".adminManager_table_audit_input_checkbox");
            var noAuditAdidArray = $(".adminManager_table_noaudit_hidden_Adid");
            var auditAdidArray = $(".adminManager_table_audit_hidden_Adid");
          
            var   Audit= $(".indirect_audit").val();
            var ADCheckedID = new Array();
   
            if(Audit=="已审核"){
                if(auditChoice.length!=0){         
                    for ( var i = 0; i < auditChoice.length; i++) {
                        if (auditChoice[i].checked == true) {
                            ADCheckedID.push($.trim(auditAdidArray[i].value));
                         
                        }
                    }
                    var jsonADCheckedID = JSON.stringify(ADCheckedID);
                    $.ajax({
                        type:"get",
                        url : "AdminManagerLogical?info=delAuditBatchInfo&jsonADCheckedID="
                            +jsonADCheckedID,
                         success:function(data){
                             alert("成功");
                         },
                    });
                }
                else{
                    alert("没有数据");
                }
                        
            }
            if(Audit=="未审核"){
                if(noAuditChoice.length!=0){         
                    for ( var i = 0; i < noAuditChoice.length; i++) {
                        if (noAuditChoice[i].checked == true) {
                            ADCheckedID.push($.trim(noAuditAdidArray[i].value));
                           
                        }
                    }
                    var jsonADCheckedID = JSON.stringify(ADCheckedID);
                    $.ajax({
                        type:"get",
                        url : "AdminManagerLogical?info=delBatchInfo&jsonADCheckedID="
                            +jsonADCheckedID,
                         success:function(data){
                             alert("成功");
                         },
                    });
                }
                else{
                    alert("没有数据");
                }
            }
            

        } else {
            return false;
        }
    });
    
    $(".adminManager_table_a_insert").click(function() {
        
        
        $.MsgBox.Confirm("温馨提示", "对于审核操作要慎重，确定继续吗？", function () { 
            
            var noAuditChoice = $(".adminManager_table_noaudit_input_checkbox");
            var auditChoice=$(".adminManager_table_audit_input_checkbox");
            var noAuditAdidArray = $(".adminManager_table_noaudit_hidden_Adid");
            var auditAdidArray = $(".adminManager_table_audit_hidden_Adid");
            var ADCheckedID = new Array();
            if(noAuditChoice.length!=0){         
                for ( var i = 0; i < noAuditChoice.length; i++) {
                    if (noAuditChoice[i].checked == true) {
                        ADCheckedID.push($.trim(noAuditAdidArray[i].value));                      
                    }
                }
                var jsonADCheckedID = JSON.stringify(ADCheckedID);
                $.ajax({
                    type:"get",
                    url : "AdminManagerLogical?info=batchAuditBy&jsonADCheckedID="
                        +jsonADCheckedID,
                     success:function(data){
                         alert("成功了");
                     },
                });
            }
            else{
                alert("没有数据");
            }
        });
        
      
    });
    
    $(".adminManager_table_mui-switch").click(function(){      //需要这页面没有其他checkbox
        var flag=0;
        if($(" input[type='checkbox']").is(':checked')){
            flag=1;
            $.ajax({
                type:"get",
                url : "AdminManagerLogical?info= TimingProcess&flag="
                    +flag,
                 success:function(data){
                     alert("成功");
                 },
            });
        }else{
            flag=0;
            $.ajax({
                type:"get",
                url : "AdminManagerLogical?info= TimingProcess&flag="
                    +flag,
                 success:function(data){
                     alert("成功");
                 },
            });
        }
        
    });
    
 
});

$(function () {
    $.MsgBox = {
      Alert: function (title, msg) {
        GenerateHtml("alert", title, msg);
        btnOk(); //alert只是弹出消息，因此没必要用到回调函数callback
        btnNo();
      },
      Confirm: function (title, msg, callback) {
        GenerateHtml("confirm", title, msg);
        btnOk(callback);
        btnNo();
      }
    }
   
    //生成Html
    var GenerateHtml = function (type, title, msg) {
   
      var _html = "";
   
      _html += '<div id="mb_box"></div><div id="mb_con"><span id="mb_tit">' + title + '</span>';
      _html += '<a id="mb_ico">x</a><div id="mb_msg">' + msg + '</div><div id="mb_btnbox">';
   
      if (type == "alert") {
        _html += '<input id="mb_btn_ok" type="button" value="确定" />';
      }
      if (type == "confirm") {
        _html += '<input id="mb_btn_ok" type="button" value="确定" />';
        _html += '<input id="mb_btn_no" type="button" value="取消" />';
      }
      _html += '</div></div>';
   
      //必须先将_html添加到body，再设置Css样式
      $("body").append(_html); GenerateCss();
    }
   
    //生成Css
    var GenerateCss = function () {
   
      $("#mb_box").css({ width: '100%', height: '100%', zIndex: '99999', position: 'fixed',
        filter: 'Alpha(opacity=60)', backgroundColor: 'black', top: '0', left: '0', opacity: '0.6'
      });
   
      $("#mb_con").css({ zIndex: '999999', width: '400px', position: 'fixed',
        backgroundColor: 'White', borderRadius: '15px'
      });
   
      $("#mb_tit").css({ display: 'block', fontSize: '14px', color: '#444', padding: '10px 15px',
        backgroundColor: '#DDD', borderRadius: '15px 15px 0 0',
        borderBottom: '3px solid #009BFE', fontWeight: 'bold'
      });
   
      $("#mb_msg").css({ padding: '20px', lineHeight: '20px',
        borderBottom: '1px dashed #DDD', fontSize: '13px'
      });
   
      $("#mb_ico").css({ display: 'block', position: 'absolute', right: '10px', top: '9px',
        border: '1px solid Gray', width: '18px', height: '18px', textAlign: 'center',
        lineHeight: '16px', cursor: 'pointer', borderRadius: '12px', fontFamily: '微软雅黑'
      });
   
      $("#mb_btnbox").css({ margin: '15px 0 10px 0', textAlign: 'center' });
      $("#mb_btn_ok,#mb_btn_no").css({ width: '85px', height: '30px', color: 'white', border: 'none' });
      $("#mb_btn_ok").css({ backgroundColor: '#168bbb' });
      $("#mb_btn_no").css({ backgroundColor: 'gray', marginLeft: '20px' });
   
   
      //右上角关闭按钮hover样式
      $("#mb_ico").hover(function () {
        $(this).css({ backgroundColor: 'Red', color: 'White' });
      }, function () {
        $(this).css({ backgroundColor: '#DDD', color: 'black' });
      });
   
      var _widht = document.documentElement.clientWidth; //屏幕宽
      var _height = document.documentElement.clientHeight; //屏幕高
   
      var boxWidth = $("#mb_con").width();
      var boxHeight = $("#mb_con").height();
   
      //让提示框居中
      $("#mb_con").css({ top: (_height - boxHeight) / 2 + "px", left: (_widht - boxWidth) / 2 + "px" });
    }
   
   
    //确定按钮事件
    var btnOk = function (callback) {
      $("#mb_btn_ok").click(function () {
        $("#mb_box,#mb_con").remove();
        if (typeof (callback) == 'function') {
          callback();
        }
      });
    }
   
    //取消按钮事件
    var btnNo = function () {
      $("#mb_btn_no,#mb_ico").click(function () {
        $("#mb_box,#mb_con").remove();
      });
    }
  });





$(function(){
    var   Audit= $(".indirect_audit").val();
   
    if(Audit=="已审核"){
        $(".adminManager_table_a_insert").css("display", "none");
    }
});
