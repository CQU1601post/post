package test;

import java.util.Iterator;
import java.util.List;

import org.junit.Test;

import allClasses.Ad;
import logicalConduct.AdminLogic;

public class TestSetAuditMark {

    AdminLogic adminLogic=new AdminLogic();
    @Test
    public void  test(){
       adminLogic.setAdAuditMark(655);
    }
}
