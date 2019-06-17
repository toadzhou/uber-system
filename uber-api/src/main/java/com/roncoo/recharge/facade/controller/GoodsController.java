package com.roncoo.recharge.facade.controller;

import com.alibaba.fastjson.JSON;
import com.roncoo.recharge.common.entity.GoodsComment;
import com.roncoo.recharge.facade.bean.dto.GoodsDTO;
import com.roncoo.recharge.facade.bean.request.UserReq;
import com.roncoo.recharge.facade.service.GoodsCommentService;
import com.roncoo.recharge.facade.service.GoodsService;
import com.roncoo.recharge.facade.validator.Assert;
import com.roncoo.recharge.facade.validator.ValidatorUtils;
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
    @Autowired
    private GoodsCommentService goodsCommentService;


    @GetMapping("get")
    public String  query(){
        GoodsDTO  goodsDTO = goodsService.getById(1L);
        System.out.println(JSON.toJSONString(goodsDTO));
        return JSON.toJSONString(goodsDTO);
    }

    @GetMapping("login")
    public void login(UserReq userReq,Integer source){
        //校验入参数
        Assert.isNull(source,"来源不能为空");
        ValidatorUtils.validateEntity(userReq);
    }


}
