package com.roncoo.recharge.facade.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@Api(tags = "1.1", description = "测试", value = "测试")
public class TestEndpoints {

    @ApiOperation(value = "获取产品",notes = "获取产品")
    @GetMapping("/product/{id}")
    public String getProduct(@PathVariable String id) {
        //for debug
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return "product id : " + id;
    }

    @ApiOperation(value = "获取产品",notes = "获取产品")
    @GetMapping("/order/{id}")
    public String getOrder(@PathVariable String id, HttpServletRequest request) {
        //for debug
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return "order id : " + id;
    }


}
