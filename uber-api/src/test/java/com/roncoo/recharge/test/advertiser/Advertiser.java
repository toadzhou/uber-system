package com.roncoo.recharge.test.advertiser;

import lombok.Data;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * Description: 广告主信息
 *
 * @author xierongli
 * @create 2019/5/22 10:48
 */
@Data
public class Advertiser {

    private String advertiserid;

    private String name;

    private String web_site;

    private Integer industry_id;

    private List<Credential> credentials;


}
