package com.roncoo.recharge.facade.bean.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

/**
 * 常见错误枚举
 *
 * @author xierongli
 * @version $$Id: project-system, v 0.1 2018/6/11 上午10:54 mark1xie Exp $$
 */
@Getter
@AllArgsConstructor
@NoArgsConstructor
public enum ErrorCodeEnum {

    /**
     *
     */
    PARAM_ERROR(-100,"参数错误"),
    TOKEN_NOT_EMPTY(-101,"token不能为空"),
    TOKEN_NOT_LEGAL(-102,"token不合法"),
    PROJECT_IS_NULL(-103,"项目为空"),
    DUPLICATE_SUBMIT(-104,"重复提交"),
    SUBMIT_NULL(-105,"提交记录为空"),
    ACCOUNT_INVALID(-201,"账号状态不可用,请联系管理员"),
    GLOBE_ERROR(-200,"全局错误");
    private Integer code;
    private String description;

}
