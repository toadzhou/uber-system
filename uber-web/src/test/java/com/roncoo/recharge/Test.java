package com.roncoo.recharge;


import cn.hutool.core.lang.Console;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.sax.handler.RowHandler;

import java.util.List;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/20 上午10:29 mark1xie Exp $$
 */

public class Test {

    public static void main(String[] args) {

        ExcelUtil.read07BySax("/Users/mark1xie/workspace/uber-system/uber-web/src/test/resources/a.xlsx", 0, createRowHandler());
//        ExcelUtil.readBySax("/Users/mark1xie/workspace/uber-system/uber-web/src/test/resources/a.xlsx", 0, createRowHandler());
    }

    private static  RowHandler createRowHandler() {
        return new RowHandler() {
            @Override
            public void handle(int sheetIndex, int rowIndex, List<Object> rowlist) {
                Console.log("[{}] [{}] {}", sheetIndex, rowIndex, rowlist);
            }
        };
    }
}
