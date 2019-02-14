package com.roncoo.recharge;


import com.alibaba.fastjson.JSON;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/20 上午10:29 mark1xie Exp $$
 */

public class Test {

    public static void main(String[] args) {
        String json ="{\"code\":\"aaa\",\"data\":{\"code\":\"bbb\",\"code2\":\"bbb\"},\"name\":[\"array1\",\"array2\",\"array3\"]}";
        Model model = JSON.parseObject(json,Model.class);
        System.out.println(JSON.toJSONString(model));
    }
}
