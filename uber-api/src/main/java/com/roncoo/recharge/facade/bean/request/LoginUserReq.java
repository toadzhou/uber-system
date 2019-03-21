package com.roncoo.recharge.facade.bean.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Auther: xierongli
 * @Date: 2019-03-21 15:05
 * @Description:
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class LoginUserReq {
    //手机号
    private String phone;
    //微信唯一码
    private String unionId;

}
