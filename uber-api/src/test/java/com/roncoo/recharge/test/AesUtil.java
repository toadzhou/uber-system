package com.roncoo.recharge.test;



import java.io.IOException;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;


/**
 * 〈一句话功能简述〉<br>
 * Description: 蜻蜓的aes ecb pkc5padding 只能蜻蜓使用（其中包含蜻蜓url替换）
 *
 * @author xierongli
 * @create 2019-05-13 16:10
 */
public class AesUtil {


    public static String safeUrlBase64Encode(byte[] data) {
        String encodeBase64 = Base64.getEncoder().encodeToString(data);
        String safeBase64Str = encodeBase64.replace('+', '-');
        safeBase64Str = safeBase64Str.replace('/', '_');
        safeBase64Str = safeBase64Str.replaceAll("=", "");
        return safeBase64Str;
    }

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
        String key = "165a88f86678c4bf9b2bfd6e82f33ade";
//        String enPrice = encrypt(price, key);
//        System.out.println("加密结果：" + enPrice);
//        System.out.println("解密结果：" + decrypt(enPrice, key));
//        System.out.println("========================");
//        System.out.println(key.length());
        System.out.println(decrypt("I_4tmKEIbSBsfONPi6dfGQ", key));

    }
}
