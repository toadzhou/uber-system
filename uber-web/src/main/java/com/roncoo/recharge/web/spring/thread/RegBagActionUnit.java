package com.roncoo.recharge.web.spring.thread;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2020-03-30 20:55
 */
public class RegBagActionUnit implements Runnable {

    private RegBag regBag;

    private AtomicInteger stock;

//    public RegBagActionUnit(RegBag regBag) {
//        this.regBag = regBag;
//    }


    public RegBagActionUnit(RegBag regBag, AtomicInteger stock) {
        this.regBag = regBag;
        this.stock = stock;
    }

    @Override
    public void run() {
        //变量级别
        Integer currentStock = regBag.getStock().decrementAndGet();
        if (currentStock <= 0) {
            System.out.println("库存消耗完毕");
        } else {
            System.out.println("当前库存:" + currentStock);
        }

        //方法级别加锁实现线程安全
//        synchronized (this){
//            Integer count = regBag.getStock();
//            regBag.setStock(--count);
//        }


    }
}
