package com.roncoo.recharge.util.bean;

import lombok.Data;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/10 上午10:14 mark1xie Exp $$
 */
@Data
public class CarConfigRes {
    private Integer id;
    private Integer parentid;
    private String name;
    private String fullname;
    private String initial;
    private String logo;
    private Integer depth;

}
