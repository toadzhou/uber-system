package com.roncoo.recharge.facade.bean.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
/**
 * taskCheckTypeEnum
 *
 * @author yz3702
 * @create 2018/8/14
 **/
@Getter
@AllArgsConstructor
@NoArgsConstructor
public enum TaskCheckTypeEnum {
    TEAM_SAMPLING(1,"团队抽检"),
    TEAM_FULL(2,"团队全检"),
    PROJECT_SAMPLING(3,"项目抽检");

    private Integer code;
    private String description;

}
