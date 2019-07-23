package com.roncoo.recharge.test.demo;

import com.alibaba.fastjson.JSON;
import com.roncoo.recharge.FacadeApplication;
import com.roncoo.recharge.facade.service.GoodsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 * WebEnvironment.MOCK—提供一个Mock的Servlet环境，内置的Servlet容器并没有真实的启动，主要搭配使用@AutoConfigureMockMvc
 *
 * WebEnvironment.RANDOM_PORT — 提供一个真实的Servlet环境，也就是说会启动内置容器，然后使用的是随机端口
 *
 * WebEnvironment.DEFINED_PORT — 这个配置也是提供一个真实的Servlet环境，使用的默认的端口，如果没有配置就是8080
 *
 * WebEnvironment.NONE — 这是个神奇的配置，跟Mock一样也不提供真实的Servlet环境。
 *
 * @author xierongli
 * @create 2019/5/27 17:41
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = FacadeApplication.class, webEnvironment = SpringBootTest.WebEnvironment.MOCK)
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
