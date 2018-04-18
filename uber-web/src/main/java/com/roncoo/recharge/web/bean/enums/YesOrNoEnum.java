package com.roncoo.recharge.web.bean.enums;

 /**
 * ${DESCRIPTION}
 *
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/18 下午3:31 mark1xie Exp $$
 */
public enum YesOrNoEnum {
    YES(1,"yes"),
     NO(0,"no");

    private Integer code;
    private String description;


    YesOrNoEnum(Integer code, String description) {
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
