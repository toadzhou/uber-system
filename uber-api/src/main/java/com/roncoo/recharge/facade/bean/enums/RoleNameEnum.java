package com.roncoo.recharge.facade.bean.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum RoleNameEnum {
    /**
     *
     */
    ADMIN(1,"超级管理员","AD",1),
    MANAGER(2,"项目经理","PM",2),
    LEADER(3,"团队经理","TM",3),
    OPERATOR(4,"标注人员","OP",4),
    PROJECT_AUDITOR(5,"项目质检","PAU",5),
    TEAM_AUDITOR(6,"团队质检","TAU",6);
    private Integer code;
    private String description;
    private String abbr;
    private Integer sort;

}
