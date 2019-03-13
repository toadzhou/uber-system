package com.roncoo.recharge;


import cn.hutool.core.util.ReUtil;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/20 上午10:29 mark1xie Exp $$
 */

public class Test {

    public static void main(String[] args) {
        String mobile = "15399990000";
        String regex = "^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$";
        System.out.println(ReUtil.isMatch(regex, mobile));

    }
}
