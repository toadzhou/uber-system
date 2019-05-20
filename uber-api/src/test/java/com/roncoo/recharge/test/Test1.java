package com.roncoo.recharge.test;

import cn.hutool.core.io.FileUtil;
import com.alibaba.fastjson.JSON;
import lombok.Cleanup;

import java.io.*;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2019/5/13 15:15
 */
public class Test1 {

    public static void main(String[] args) throws IOException {
        @Cleanup InputStream in = new FileInputStream("d:/demo1.txt");
        @Cleanup OutputStream out = new FileOutputStream("d:/demo2.txt");
        byte[] b = new byte[10000];
        while (true) {
            int r = in.read(b);
            if (r == -1) break;
            out.write(b, 0, r);
        }

//        FileUtil.touch("d:/xrl.txt");
        FileUtil.writeString("jsjkadjas", "d:/xrl123.txt", "UTF-8");
        boolean flag = FileUtil.exist("d:/xrl123.txt");
        System.out.println(flag);
        FileUtil.rename(new File("d:/xrl123.txt"),"xrl123-old.txt", true, false);
    }



}
