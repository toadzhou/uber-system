package com.roncoo.recharge.facade.bean.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public enum TaskTypeEnum {
    LABEL_TASK(1,"标注任务"),
    TEAM_TEST(2,"团队检测"),
    PROJECT_TEST(3,"项目检测");

    private Integer code;
    private String description;

}
