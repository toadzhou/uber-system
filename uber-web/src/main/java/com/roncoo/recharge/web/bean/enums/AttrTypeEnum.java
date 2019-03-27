package com.roncoo.recharge.web.bean.enums;

/**
 * @Auther: xierongli
 * @Date: 2019-03-27 15:59
 * @Description:属性录入方式
 */
public enum AttrTypeEnum {

    MANUAL(0,"手工录入"),
    SELECT(1,"选择输入"),
    TEXT(2,"多行文本");


    private Integer code;
    private String description;

    AttrTypeEnum(Integer code, String description) {
        this.code = code;
        this.description = description;
    }

    public static String getText(Integer code){
        for(AttrTypeEnum attrTypeEnum : AttrTypeEnum.values()){
            if(attrTypeEnum.getCode() == code){
                return attrTypeEnum.getDescription();
            }
        }
        return "";
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
    }}
