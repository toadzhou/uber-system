package com.roncoo.recharge.web.spring.condition;

import com.roncoo.recharge.web.spring.condition.config.BeanConfig;
import com.roncoo.recharge.web.spring.condition.model.Person;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.core.env.Environment;

import java.util.Map;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2020-04-13 14:43
 */
public class Main {

    public static void main(String[] args) {
        AnnotationConfigApplicationContext applicationContext = new AnnotationConfigApplicationContext(BeanConfig.class);
        //1. 先判断操作系统,后加载bean
        Environment environment = applicationContext.getEnvironment();
        System.out.println(environment.getProperty("os.name"));

        //根据class 获取容器中的对象
        Map<String, Person> map = applicationContext.getBeansOfType(Person.class);
        System.out.println(map);

    }
}
