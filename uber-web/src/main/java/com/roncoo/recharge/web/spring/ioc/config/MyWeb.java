package com.roncoo.recharge.web.spring.ioc.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

public class MyWeb implements WebApplicationInitializer {
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {

        AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
        context.register(MvcConfig.class);


        DispatcherServlet servlet = new DispatcherServlet(context);
        ServletRegistration servletRegistration = servletContext.addServlet("app", servlet);
        ((ServletRegistration.Dynamic) servletRegistration).setLoadOnStartup(1);
        servletRegistration.addMapping("/*.do");
    }
}
