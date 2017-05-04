function isNull(str) {
    if (str == "")
        return true;
    var regu = "^[ ]+$";
    var re = new RegExp(regu);
    return re.test(str);
}
function isInteger(str) {
    var patten = /^[1-9]+$/;
    return patten.test(str);
}
function checkUser(str)
{
    if (!str.match(/^[\u4E00-\u9FA5a-zA-Z0-9_]{6,20}$/)) {
        return false;
    } else {
        return true;
    }
}

function isEmail(email) {
    var REXemail = /^([0-9a-zA-Z])+@([0-9a-zA-Z])+(.[0-9a-zA-Z])+/;
    if (REXemail.test(email)// 验证邮箱的格式
    ) {
        return true;
    } else {
        return false;
    }
}
