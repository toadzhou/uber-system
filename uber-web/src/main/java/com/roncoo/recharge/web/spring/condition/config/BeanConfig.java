package com.roncoo.recharge.web.spring.condition.config;

import com.roncoo.recharge.web.spring.condition.model.Person;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Conditional;
import org.springframework.context.annotation.Configuration;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2020-04-13 14:44
 */
@Configuration
public class BeanConfig {

    @Bean("one")
    @Conditional(WindowsCondition.class)
    public Person one(){
        return new Person(1L, "mark", 1);
    }


    @Bean("two")
    @Conditional(LinuxCondition.class)
    public Person two(){
        return new Person(2L, "lucy", 0);
    }


}
