package com.roncoo.recharge.test.advertiser;

import cn.hutool.http.HttpRequest;
import com.alibaba.fastjson.JSON;
import org.assertj.core.util.Lists;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2019/5/22 10:51
 */
public class Test {

    public static void main(String[] args) {
        Advertiser advertiser = new Advertiser();
        advertiser.setAdvertiserid("988837");
        advertiser.setIndustry_id(5010);
        advertiser.setWeb_site("http://www.tuia.cn");
        advertiser.setName("demo");
        advertiser.setCredentials(Lists.newArrayList(Credential.builder().cid(1).url("http://www.baidu.com").remark("remark").build()));
        System.out.println(JSON.toJSONString(Lists.newArrayList(advertiser)));
        String result = HttpRequest.post("http://demo.adx.ms/index.php?r-openapi/Advertiser/upload").body(JSON.toJSONString(Lists.newArrayList(advertiser))).execute().body();
        System.out.println(result);
    }
}
