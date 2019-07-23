package com.roncoo.recharge;


import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import com.alibaba.fastjson.JSON;

import java.util.List;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/20 上午10:29 mark1xie Exp $$
 */

public class Test {

    public static void main(String[] args) {
        ExcelReader reader1 = ExcelUtil.getReader("a.xlsx");


        reader1.addHeaderAlias("类型","adName")
                .addHeaderAlias("广告位id", "slotId")
                .addHeaderAlias("广告位中文名称","slotName")
                .addHeaderAlias("底价", "floorPrice");
        List<Ad> adList = reader1.readAll(Ad.class);
        reader1.close();
        System.out.println(JSON.toJSONString(adList));
    }


}
