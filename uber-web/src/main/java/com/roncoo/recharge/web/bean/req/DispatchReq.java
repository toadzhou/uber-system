package com.roncoo.recharge.web.bean.req;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 打车调度请求
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/17 下午5:23 mark1xie Exp $$
 */
@Data
@Accessors(chain = true)
public class DispatchReq {

    private Double latitude;
    private Double longitude;


}
