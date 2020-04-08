package com.roncoo.recharge.web.spring.thread;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2020-03-30 20:45
 */
public class ActionUnit implements Runnable{

    private int count;

    public ActionUnit(int count) {
        this.count = count;
    }

    @Override
    public void run() {
        count --;

    }
}
