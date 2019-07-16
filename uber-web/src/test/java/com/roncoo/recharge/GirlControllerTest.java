package com.roncoo.recharge;

import com.roncoo.recharge.web.service.GirlService;
import com.roncoo.recharge.web.service.ImageService;
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

    @Autowired
    private ImageService imageService;


    @Test
    public void test1(){
        String url = imageService.uploadImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561978987505&di=2830de514f9fb33b6dde4987fc432ef7&imgtype=0&src=http%3A%2F%2Fwww.welovead.com%2Fupload%2Fphoto_db%2F2010%2F10%2F31%2F201010310005392809%2F960_960%2F201010310005392809.jpg");
        System.out.println(url);
    }



}
