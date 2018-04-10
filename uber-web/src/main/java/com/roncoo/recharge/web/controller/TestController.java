package com.roncoo.recharge.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/10 下午3:47 mark1xie Exp $$
 */
@Controller
@RequestMapping(value = "/test")
public class TestController {

    @RequestMapping("driver")
    public String driver(){

        return "driver";
    }

}
