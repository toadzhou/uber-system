package com.roncoo.recharge.web.bean.enums;

/**
 * 〈一句话功能简述〉<br>
 * Description: 计量单位
 *
 * @author xierongli
 * @create 2019/7/16 16:38
 */
public enum  UnitEnum {
    PCS(1,"件"),
    SET(2,"套");

    private Integer code;

    private String description;

    UnitEnum(Integer code, String description) {
        this.code = code;
        this.description = description;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
