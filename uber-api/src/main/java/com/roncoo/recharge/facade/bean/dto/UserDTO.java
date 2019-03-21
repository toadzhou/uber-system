package com.roncoo.recharge.facade.bean.dto;

import lombok.Data;

/**
 * @Auther: xierongli
 * @Date: 2019-03-21 14:54
 * @Description: 用户处理模型
 */
@Data
public class UserDTO {

    private Boolean existPhoneUser;
    private Boolean existUnionIdUser;
    //根据phone查
    private String phoneByPhone;
    private String unionIdByPhone;
    //根据unionId查
    private String phoneByUnionId;
    private String unionIdByUnionId;

}
