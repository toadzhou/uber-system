package com.roncoo.recharge.facade.controller;

import com.alibaba.fastjson.JSON;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 * 〈一句话功能简述〉<br>
 * Description: cookie控制器
 *
 * @author xierongli
 * @create 2019/6/21 14:37
 */
@RestController
@RequestMapping("cookie")
public class CookieController {


    @GetMapping("get")
    public void get(HttpServletRequest httpServletRequest){
        Cookie[] cookies = httpServletRequest.getCookies();
        System.out.println(JSON.toJSONString(cookies));
    }


}
