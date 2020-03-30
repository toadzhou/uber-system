package com.roncoo.recharge.web.spring.ioc.service;

import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Component
@Order(value = 1) // 决定各个Runner的执行次序
public class MyCommandLineRunner implements CommandLineRunner {

    @Override
    public void run(String... var1) throws Exception {
        // do something
    }
}
