package com.roncoo.recharge.web.spring.ioc;

import org.jeecg.spring.config.AppConfig;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class Main {

    public static void main(String[] args) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);

        DispatcherServlet dispatcherServlet = new DispatcherServlet();


//        SpringServletContainerInitializer
    }
}
