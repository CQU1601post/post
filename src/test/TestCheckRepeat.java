package test;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Iterator;
import java.util.List;

import logicalConduct.AdminLogic;

import org.junit.Test;

import allClasses.Ad;

public class TestCheckRepeat {
    AdminLogic adminLogic=new AdminLogic();
    @Test
    public void  test(){
        String  paste_type="bbb";
        try {
            paste_type = URLDecoder.decode(paste_type, "utf-8");
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        String sqlString="select * from unittype where unitTypeName='"+paste_type+"'";
        boolean flag=adminLogic.checkRepeat(sqlString);
        System.out.println(flag);
    }
}
