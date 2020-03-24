package com.roncoo.recharge.web.spring.ioc.service;

import cn.hutool.core.date.DatePattern;
import cn.hutool.core.date.DateUtil;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class UserService {

    private String name;


    public void test() {
        System.out.println("test");
    }


    public String showTime() {
        return DateUtil.format(new Date(), DatePattern.NORM_DATETIME_FORMAT);
    }

    public String showName() {
        System.out.println("show name:" + name);
        return name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        System.out.println("----------" + name);
        this.name = name;
    }
}
