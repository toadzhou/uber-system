package com.roncoo.recharge.web.spring.ioc;

import com.roncoo.recharge.web.spring.ioc.config.AppConfig;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class Main {

    public static void main(String[] args) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
        BeanDefinition userService = (BeanDefinition)context.getBean("userService");
        System.out.println(userService.getScope());

        ExecutorService executorService = new ThreadPoolExecutor(1, 1,
                60L, TimeUnit.SECONDS,
                new ArrayBlockingQueue<>(10));

        executorService.execute(new Runnable() {
            @Override
            public void run() {
                System.out.println("---invoke--");
            }
        });

        new Thread(()->{
            System.out.printf("0000");
        }).start();

    }
}
