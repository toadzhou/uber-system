package com.roncoo.recharge.web.bean.res;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 打车请求模型
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/16 上午10:28 mark1xie Exp $$
 */
@Data
@Accessors(chain = true)
public class RequestInfoReq {

    private Double departureLat;
    private Double departureLng;
    private String departureAddress;

    private Double destinationLat;
    private Double destinationLng;
    private String destinationAddress;

    private Long passengerId;
}
