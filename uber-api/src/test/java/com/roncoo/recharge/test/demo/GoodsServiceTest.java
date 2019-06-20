package com.roncoo.recharge.test.demo;

import com.alibaba.fastjson.JSON;
import com.roncoo.recharge.facade.service.GoodsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2019/5/27 17:41
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class GoodsServiceTest {

    @Autowired
    private GoodsService goodsService;


    @Test
    public void queryForList(){
        System.out.println(JSON.toJSONString(goodsService.getById(1L)));
    }

    @Test
    public void queryForList1(){
        System.out.println(JSON.toJSONString(goodsService.getById(1L,1)));
    }
}
