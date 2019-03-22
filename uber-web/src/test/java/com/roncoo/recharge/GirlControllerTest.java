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
        String imageUrl = "http://att3.citysbs.com/200x240/hangzhou/2015/05/17/17/960x1016-171152_v2_16771431853912805_fd69f39be8a6d3134c61ef1583e7b694.jpg";
        String url = girlService.uploadImage(imageUrl);
        System.out.printf(url);
    }


}
