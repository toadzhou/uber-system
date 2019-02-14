package com.roncoo.recharge.facade.bean.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
/**
 * taskCheckStatusEnum
 *
 * @author yz3702
 * @create 2018/8/14
 **/
@Getter
@AllArgsConstructor
@NoArgsConstructor
public enum TaskCheckStatusEnum {
    INIT(0,"初始化"),
    SUCCESS(1,"合格"),
    FAIL(2,"驳回"),
    EXPIRE(3,"过期");
    private Integer code;
    private String description;

}
