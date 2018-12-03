package com.roncoo.recharge;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/9/8 下午8:00 mark1xie Exp $$
 */
@Setter
@Getter
public class Model {

    private String code;
    private Data data;
    private List<String> name;

}
