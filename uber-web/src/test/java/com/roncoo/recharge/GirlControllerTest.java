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
        String url = imageService.uploadImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554215480781&di=c9efa02263e364a80dcad58ba79f5d23&imgtype=0&src=http%3A%2F%2Fpic.qiantucdn.com%2F58pic%2F26%2F31%2F49%2F06658PICAnc_1024.jpg");
        System.out.println(url);
    }



}
