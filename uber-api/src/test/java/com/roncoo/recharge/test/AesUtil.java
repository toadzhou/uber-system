package com.roncoo.recharge.test;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import java.io.IOException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

/**
 * 〈一句话功能简述〉<br>
 * Description: 蜻蜓的aes ecb pkc5padding 只能蜻蜓使用（其中包含蜻蜓url替换）
 *
 * @author xierongli
 * @create 2019-05-13 16:10
 */
public class AesUtil {

    /**
     * 加解密价格放在http请求中，避免出现http中关键字报错，蜻蜓方替换掉关键字
     *
     * @param data
     * @return
     */
    public static String safeUrlBase64Encode(byte[] data) {
        String encodeBase64 = new BASE64Encoder().encode(data);
        String safeBase64Str = encodeBase64.replace('+', '-');
        safeBase64Str = safeBase64Str.replace('/', '_');
        safeBase64Str = safeBase64Str.replaceAll("=", "");
        return safeBase64Str;
    }

    /**
     * 加解密价格放在http请求中，避免出现http中关键字报错，蜻蜓方替换掉关键字
     *
     * @param safeBase64Str
     * @return
     */
    public static byte[] safeUrlBase64Decode(final String safeBase64Str) throws IOException {
        String base64Str = safeBase64Str.replace('-', '+');
        base64Str = base64Str.replace('_', '/');
        int mod4 = base64Str.length() % 4;
        if (mod4 > 0) {
            base64Str = base64Str + "====".substring(mod4);
        }
        byte[] result = new BASE64Decoder().decodeBuffer(base64Str);
        return result;
    }

    public static String encrypt(String code, String key) throws Exception {
        byte[] enCodeFormat = key.getBytes();
        SecretKeySpec skeySpec = new SecretKeySpec(enCodeFormat, "AES");
        Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
        cipher.init(Cipher.ENCRYPT_MODE, skeySpec);
        byte[] encrypted = cipher.doFinal(code.getBytes("utf-8"));
        return safeUrlBase64Encode(encrypted);
    }

    public static String decrypt(String encode, String key) throws Exception {
        byte[] encrypted = safeUrlBase64Decode(encode);
        byte[] enCodeFormat = key.getBytes();
        SecretKeySpec skeySpec = initKeyForAES(key);
        Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
        cipher.init(Cipher.DECRYPT_MODE, skeySpec);
        byte[] original = cipher.doFinal(encrypted);
        String originalString = new String(original, "utf-8");
        return originalString;
    }

    private static SecretKeySpec initKeyForAES(String key) throws NoSuchAlgorithmException {
        if (null == key || key.length() == 0) {
            throw new NullPointerException("key not is null");
        }
        SecretKeySpec key2 = null;
        SecureRandom random = SecureRandom.getInstance("SHA1PRNG");
        random.setSeed(key.getBytes());
        try {
            KeyGenerator kgen = KeyGenerator.getInstance("AES");
            kgen.init(128, random);
            SecretKey secretKey = kgen.generateKey();
            byte[] enCodeFormat = secretKey.getEncoded();
            key2 = new SecretKeySpec(enCodeFormat, "AES");
        } catch (NoSuchAlgorithmException ex) {
            throw new NoSuchAlgorithmException();
        }
        return key2;

    }

    public static void main(String[] args) throws Exception {
        String price = "1000";
        String key = "165a88f86678c4bf9b2bfd6e82f33ade";
//        String enPrice = encrypt(price, key);
//        System.out.println("加密结果：" + enPrice);
//        System.out.println("解密结果：" + decrypt(enPrice, key));
//        System.out.println("========================");
//        System.out.println(key.length());
        System.out.println(decrypt("I_4tmKEIbSBsfONPi6dfGQ", key));

    }
}
