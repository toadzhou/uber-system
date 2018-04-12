package com.roncoo.recharge.web.bean.qo;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/12 下午3:49 mark1xie Exp $$
 */
@Data
@Accessors(chain = true)
public class DriverSendLocationQO {

    private Double latitude;
    private Double longitude;
    private String address;
    private Long driverId;
}
