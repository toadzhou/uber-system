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
        String imageUrl = "http://att3.citysbs.com/200x240/hangzhou/2015/03/16/00/960x1280-000049_v2_13751426435249314_343aa1cc6746bf075a61fdbed2f07df8.jpg";
        String url = girlService.uploadImage(imageUrl);
        System.out.printf(url);
    }


}
