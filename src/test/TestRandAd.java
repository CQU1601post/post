package test;

import java.util.Iterator;
import java.util.List;

import jdbc.SearchAboutPost;

import org.junit.Test;

import allClasses.Ad;

public class TestRandAd {

    SearchAboutPost searchAboutPost=new SearchAboutPost();
    @Test
    public void  test(){
        List<Ad> ads=searchAboutPost.getRandAd(15, 4, 0);
        for (Iterator iterator = ads.iterator(); iterator.hasNext();) {
            Ad ad = (Ad) iterator.next();
            System.out.println(ad.getAdId()+"    ");
        }
    }
}
