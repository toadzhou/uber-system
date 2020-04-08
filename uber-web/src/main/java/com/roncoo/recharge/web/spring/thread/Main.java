package com.roncoo.recharge.web.spring.thread;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2020-03-30 20:45
 */
public class Main {


    public static void main(String[] args) {
        int regBagCount = 100;

        RegBag regBag = new RegBag();
        AtomicInteger counter = new AtomicInteger(30);
        regBag.setStock(counter);


        ExecutorService executorService = new ThreadPoolExecutor(10, 10, 100, TimeUnit.SECONDS, new ArrayBlockingQueue<>(9));

        for (int i = 0; i < 30; i++) {
            RegBagActionUnit actionUnit = new RegBagActionUnit(regBag, counter);
            executorService.execute(actionUnit);
//            System.out.println(regBag.getStock());
        }

        executorService.shutdown();

    }
}
