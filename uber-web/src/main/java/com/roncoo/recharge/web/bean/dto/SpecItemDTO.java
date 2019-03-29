package com.roncoo.recharge.web.bean.dto;

import lombok.Data;

/**
 * @Auther: xierongli
 * @Date: 2019-03-29 11:04
 * @Description: 规则模型
 */
@Data
public class SpecItemDTO {
    //规格主键
    private Long id;
    //规格名称
    private String name;
    //规格选项
    private String option;

}
