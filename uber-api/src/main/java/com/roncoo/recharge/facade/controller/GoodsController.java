package com.roncoo.recharge.facade.controller;

import com.roncoo.recharge.facade.bean.dto.GoodsDTO;
import com.roncoo.recharge.facade.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 〈一句话功能简述〉<br>
 * Description: 商品控制器
 *
 * @author xierongli
 * @create 2019/5/28 10:13
 */
@RestController
@RequestMapping("goods")
public class GoodsController {
    @Autowired
    private GoodsService goodsService;


    @GetMapping("get")
    public void query(){
        GoodsDTO  goodsDTO = goodsService.getById(1L);
        System.out.println(goodsDTO);
    }


}
