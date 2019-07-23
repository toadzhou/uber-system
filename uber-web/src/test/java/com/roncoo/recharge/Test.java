package com.roncoo.recharge;


import cn.hutool.core.io.FileUtil;
import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import com.alibaba.fastjson.JSON;
import org.apache.commons.io.FileUtils;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Properties;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/20 上午10:29 mark1xie Exp $$
 */

public class Test {

    public static void main(String[] args) {
        try {
            File jsonFile = ResourceUtils.getFile("classpath:slot_baidu.json");
            String json = FileUtils.readFileToString(jsonFile,"utf-8");
            System.out.println(json);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }



    public void  readExcel(){
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
