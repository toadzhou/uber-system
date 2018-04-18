package com.roncoo.recharge.common.model;

import lombok.Data;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/18 下午2:37 mark1xie Exp $$
 */
@Data
public class MatchModel {

    private String driverName;
    private Long driverId;
    private String phone;
    private String latitude;
    private String longitude;
    private String address;
}
