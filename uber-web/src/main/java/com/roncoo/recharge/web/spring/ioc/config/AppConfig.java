package com.roncoo.recharge.web.spring.ioc.config;

import org.jeecg.spring.service.OrderDao;
import org.jeecg.spring.service.UserDao;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

    @Bean
    public UserDao userDao(){
        // 会被打印几次 ？？
        System.out.println("注入UserDao");
        return new UserDao();
    }

    @Bean
    public OrderDao orderDao(){
        // 在这里调用userDao()方法
        userDao();
        return new OrderDao();
    }

}
