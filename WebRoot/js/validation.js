function isNull( str ){ 
if ( str == "" ) return true; 
var regu = "^[ ]+$"; 
var re = new RegExp(regu); 
return re.test(str); 
} 
function isInteger( str ){  
    var patten=/^[0-9]+$/; 
    return  patten.test(str); 
    } 
