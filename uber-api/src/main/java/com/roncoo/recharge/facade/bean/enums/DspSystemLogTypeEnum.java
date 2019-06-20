package com.roncoo.recharge.facade.bean.enums;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2019/6/20 15:26
 */
public enum DspSystemLogTypeEnum {
    back(3,"竞价返回");

    private Integer type;

    private String decription;

    DspSystemLogTypeEnum(Integer type, String decription) {
        this.type = type;
        this.decription = decription;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }
}
