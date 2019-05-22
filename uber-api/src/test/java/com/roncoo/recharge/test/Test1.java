package com.roncoo.recharge.test;

import com.alibaba.fastjson.JSON;

import java.util.Collections;
import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2019/5/20 16:15
 */
public class Test1 {

    public static void main(String[] args) {
        List<User> userList = Collections.emptyList();
        User user = new User();
        user.setName("dadas");
        user.setIds(Collections.EMPTY_LIST);
        System.out.println(JSON.toJSONString(user));

        System.out.println(Collections.emptyList());

    }
}
