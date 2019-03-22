package com.roncoo.recharge;

import com.roncoo.recharge.web.service.GirlService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @Auther: xierongli
 * @Date: 2019-03-22 16:18
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class GirlControllerTest {

    @Autowired
    private GirlService girlService;


    @Test
    public void uploadImage(){
        String userId ="312321321321";
        String imageUrl = "http://att3.citysbs.com/200x240/hangzhou/2015/04/23/21/540x960-213809_v2_16961429796289779_1d3770abaf0eb270abc7fd35fd4d2a6b.jpg";
        String url = girlService.uploadImage(userId,imageUrl);
        System.out.printf("url");
    }


}
