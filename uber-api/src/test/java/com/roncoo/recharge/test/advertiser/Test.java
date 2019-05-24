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
        String token = "0a1605d1d68ce0bf374e7028caceb79e";
        String dspId = "10189";

        Advertiser advertiser = new Advertiser();
        advertiser.setAdvertiserid("988837");
        advertiser.setIndustry_id(5010);
        advertiser.setWeb_site("http://www.tuia.cn");
        advertiser.setName("demo");
        advertiser.setCredentials(Lists.newArrayList(Credential.builder().cid(1).url("http://yun.tuia.cn/tuia/tuia-advert-home-node/dist/8002c0da0e204d0717b18dc2136a87c4.png").remarks("remark").build()));

        Req req = new Req();
        req.setAdvertiser(Lists.newArrayList(advertiser));

        System.out.println(JSON.toJSONString(req));
        String result = HttpRequest.post("http://demo.adx.ms/index.php?r-openapi/Advertiser/upload").header("dspid",dspId).header("token",token).body(JSON.toJSONString(req)).execute().body();
        System.out.println(result);
    }
}
