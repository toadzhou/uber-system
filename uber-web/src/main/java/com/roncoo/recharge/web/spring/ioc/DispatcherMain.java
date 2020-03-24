package com.roncoo.recharge.web.spring.ioc;

import org.jeecg.spring.config.MvcConfig;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class DispatcherMain {

    public static void main(String[] args) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(MvcConfig.class);

    }
}
