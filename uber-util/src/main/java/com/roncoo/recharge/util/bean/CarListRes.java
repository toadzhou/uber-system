package com.roncoo.recharge.util.bean;

import lombok.Data;

import java.util.List;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/10 下午6:08 mark1xie Exp $$
 */
@Data
public class CarListRes {

    private Integer id;
    private Integer parentId;
    private String name;
    private String fullName;
    private String initial;
    private String logo;
    private Integer depth;

    private List<CarConfigRes> carList;
}
