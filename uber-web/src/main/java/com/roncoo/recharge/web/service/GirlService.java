package com.roncoo.recharge.web.service;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.io.FileUtil;
import com.roncoo.recharge.common.oss.OSSFactory;
import com.roncoo.recharge.util.Constants;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

/**
 * @Auther: xierongli
 * @Date: 2019-03-22 15:41
 * @Description:
 */
@Component
public class GirlService {


    public String  uploadImage(String userId, String imageUrl){
            String url = null;
            try {
                InputStream input = new URL(imageUrl).openStream();
                url = OSSFactory.build(Constants.CloudService.ALIYUN.getValue()).uploadSuffix(input, userId);
            } catch (IOException e) {
                e.printStackTrace();
            }
            return url;
    }



}
