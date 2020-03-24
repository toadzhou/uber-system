package com.roncoo.recharge.web.spring.ioc.config;


import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

@Configuration
@ComponentScan("org.jeecg.spring.controller")
public class MvcConfig extends WebMvcConfigurationSupport {


}
