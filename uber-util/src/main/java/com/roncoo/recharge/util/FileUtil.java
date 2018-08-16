package com.roncoo.recharge.util;

import com.alibaba.fastjson.JSON;
import java.io.File;

public class FileUtil {


    public static void traverseFolder2(String path) {

        File file = new File(path);
        if (file.exists()) {
            File[] files = file.listFiles();
            if (files.length == 0) {
                System.out.println("文件夹是空的!");
                return;
            } else {
                for (File file2 : files) {
                    if (file2.isDirectory()) {
                        System.out.println("文件夹:" + file2.getAbsolutePath());
                        traverseFolder2(file2.getAbsolutePath());
                    } else {
                        System.out.println("文件:" + file2.getAbsolutePath());
                    }
                }
            }
        } else {
            System.out.println("文件不存在!");
        }
    }


    public static void main(String[] args) {
        traverseFolder2("http://www.hao1024.cn/upload/static");
//        System.out.println(JSON.toJSONString());
    }


}
