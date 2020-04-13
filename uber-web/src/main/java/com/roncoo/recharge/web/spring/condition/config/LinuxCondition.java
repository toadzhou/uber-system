package com.roncoo.recharge.web.spring.condition.config;


import org.springframework.context.annotation.Condition;
import org.springframework.context.annotation.ConditionContext;
import org.springframework.core.env.Environment;
import org.springframework.core.type.AnnotatedTypeMetadata;

/**
 * 〈一句话功能简述〉<br>
 * Description: 根据操作系统类别判断是否加载
 *
 * @author xierongli
 * @create 2020-04-13 14:54
 */
public class LinuxCondition implements Condition {
    @Override
    public boolean matches(ConditionContext conditionContext, AnnotatedTypeMetadata annotatedTypeMetadata) {
        //获取当前环境信息
        Environment environment = conditionContext.getEnvironment();
        //获得当前系统名
        String property = environment.getProperty("os.name");
        //包含Windows则说明是windows系统，返回true
        if (property.contains("Mac OS X")){
            return true;
        }
        return false;
    }
}
