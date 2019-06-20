package com.roncoo.recharge.test.demo;

import cn.hutool.core.util.CharsetUtil;
import cn.hutool.crypto.SecureUtil;
import cn.hutool.crypto.symmetric.SymmetricAlgorithm;
import cn.hutool.crypto.symmetric.SymmetricCrypto;

/**
 * 〈一句话功能简述〉<br>
 * Description: aes
 *
 * @author xierongli
 * @create 2019-05-19 10:25
 */
public class AES {

    public static void main(String[] args) {
        String content = "test中文";

//随机生成密钥
//        byte[] key = SecureUtil.generateKey(SymmetricAlgorithm.AES.getValue()).getEncoded();
        String key1 =  SecureUtil.generateKey(SymmetricAlgorithm.AES.getValue()).getFormat();

//构建
        SymmetricCrypto aes = new SymmetricCrypto(SymmetricAlgorithm.AES, key1.getBytes());

//加密
        byte[] encrypt = aes.encrypt(content);
//解密
        byte[] decrypt = aes.decrypt(encrypt);

//加密为16进制表示
        String encryptHex = aes.encryptHex(content);
//解密为字符串
        String decryptStr = aes.decryptStr(encryptHex, CharsetUtil.CHARSET_UTF_8);

        System.out.println(key1);
    }

}
