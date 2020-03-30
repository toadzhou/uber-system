package com.roncoo.recharge.web.spring.ioc.service;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.NoSuchBeanDefinitionException;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.core.ResolvableType;
import org.springframework.stereotype.Component;

/**
 * 〈一句话功能简述〉<br>
 * Description: Bean生命周期回调接口
 *
 * @author xierongli
 * @create 2020-03-27 10:40
 */
@Component
public class StudentService implements BeanNameAware, BeanFactory, ApplicationContextAware, BeanPostProcessor, InitializingBean {
    @Override
    public Object getBean(String s) throws BeansException {
        return null;
    }

    @Override
    public <T> T getBean(String s, Class<T> aClass) throws BeansException {
        return null;
    }

    @Override
    public <T> T getBean(Class<T> aClass) throws BeansException {
        return null;
    }

    @Override
    public Object getBean(String s, Object... objects) throws BeansException {
        return null;
    }

    @Override
    public <T> T getBean(Class<T> aClass, Object... objects) throws BeansException {
        return null;
    }

    @Override
    public boolean containsBean(String s) {
        return false;
    }

    @Override
    public boolean isSingleton(String s) throws NoSuchBeanDefinitionException {
        return false;
    }

    @Override
    public boolean isPrototype(String s) throws NoSuchBeanDefinitionException {
        return false;
    }

    @Override
    public boolean isTypeMatch(String s, ResolvableType resolvableType) throws NoSuchBeanDefinitionException {
        return false;
    }

    @Override
    public boolean isTypeMatch(String s, Class<?> aClass) throws NoSuchBeanDefinitionException {
        return false;
    }

    @Override
    public Class<?> getType(String s) throws NoSuchBeanDefinitionException {
        return null;
    }

    @Override
    public String[] getAliases(String s) {
        return new String[0];
    }

    @Override
    public void setBeanName(String s) {

    }

    @Override
    public void afterPropertiesSet() throws Exception {

    }

    @Override
    public Object postProcessBeforeInitialization(Object o, String s) throws BeansException {
        return null;
    }

    @Override
    public Object postProcessAfterInitialization(Object o, String s) throws BeansException {
        return null;
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {

    }
}
