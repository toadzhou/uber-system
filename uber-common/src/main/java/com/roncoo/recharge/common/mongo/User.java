package com.roncoo.recharge.common.mongo;

import org.springframework.data.annotation.Id;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/17 下午3:06 mark1xie Exp $$
 */

public class User {

    @Id
    private Long id;

    private String username;
    private Integer age;

    public User(Long id, String username, Integer age) {
        this.id = id;
        this.username = username;
        this.age = age;
    }
}
