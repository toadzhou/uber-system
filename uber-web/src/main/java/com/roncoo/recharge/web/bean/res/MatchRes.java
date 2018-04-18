package com.roncoo.recharge.web.bean.res;

import com.roncoo.recharge.util.Money;
import lombok.Data;

import java.io.Serializable;

/**
 * 匹配结果
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/17 下午5:15 mark1xie Exp $$
 */
@Data
public class MatchRes implements Serializable {

    private String driverName;
    private Long driverId;
    private String phone;
    private String latitude;
    private String longitude;
    private String address;

    private Money price;
}
