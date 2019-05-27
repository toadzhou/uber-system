package com.roncoo.recharge.test;

import java.io.IOException;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;


/**
 * author: heyin
 * date: 2018-12-10
 * desc: òßòÑµÄaes ecb pkc5padding Ö»ÄÜòßòÑÊ¹ÓÃ£¨ÆäÖÐ°üº¬òßòÑurlÌæ»»£©
 */
public class AesUtil1 {

    /**
     * ¼Ó½âÃÜ¼Û¸ñ·ÅÔÚhttpÇëÇóÖÐ£¬±ÜÃâ³öÏÖhttpÖÐ¹Ø¼ü×Ö±¨´í£¬òßòÑ·½Ìæ»»µô¹Ø¼ü×Ö
     *
     * @param data
     * @return
     */
    public static String safeUrlBase64Encode(byte[] data) {
        String encodeBase64 = Base64.getEncoder().encodeToString(data);
        String safeBase64Str = encodeBase64.replace('+', '-');
        safeBase64Str = safeBase64Str.replace('/', '_');
        safeBase64Str = safeBase64Str.replaceAll("=", "");
        return safeBase64Str;
    }

    /**
     * ¼Ó½âÃÜ¼Û¸ñ·ÅÔÚhttpÇëÇóÖÐ£¬±ÜÃâ³öÏÖhttpÖÐ¹Ø¼ü×Ö±¨´í£¬òßòÑ·½Ìæ»»µô¹Ø¼ü×Ö
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
        byte[] result = Base64.getDecoder().decode(base64Str);
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
        SecretKeySpec skeySpec = new SecretKeySpec(enCodeFormat, "AES");
        Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
        cipher.init(Cipher.DECRYPT_MODE, skeySpec);
        byte[] original = cipher.doFinal(encrypted);
        String originalString = new String(original, "utf-8");
        return originalString;
    }

    public static void main(String[] args) throws Exception {
        String price = "1000";
        String key = "1234123412341234123412341234abcd";
        String enPrice = encrypt(price, key);
        System.out.println("¼ÓÃÜ½á¹û£º" + enPrice);
        System.out.println("½âÃÜ½á¹û£º" + decrypt(enPrice, key));
        System.out.println("========================");
        System.out.println(key.length());
        System.out.println(decrypt("I_4tmKEIbSBsfONPi6dfGQ", key));

    }
}
