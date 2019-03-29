package com.roncoo.recharge.web.bean.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 商品类型
 * </p>
 *
 * @author mark
 * @since 2019-03-28
 */
@Data
@Accessors(chain = true)
public class GoodsTypeVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 名称
     */
    private String name;
    /**
     * 状态:0不可用 1可用
     */
    private Integer status;
    /**
     * 商品属性分组，将一个商品类型的属性分成组，在显示的时候也是按组显示。该字段的值显示在属性的前一行，像标题的作用
     */
    private String attrGroup;
    /**
     * 创建人
     */
    private String createPerson;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 更新人
     */
    private String updatePerson;
    /**
     * 修改时间
     */
    private Date updateTime;

    /**
     * 属性数
     */
    private Integer attributeNumber;
    /**
     * 属性组
     */
    private String attrGroupText;
    /**
     * 关联品牌-显示
     */
    private String brandShowText;
    /**
     * 关联品牌
     */
    private String brandIds;

    /**
     * 规则列表
     */
    private String specIds;



}
