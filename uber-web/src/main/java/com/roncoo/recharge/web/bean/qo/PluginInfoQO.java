package com.roncoo.recharge.web.bean.qo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 插件(此处商品)
 * </p>
 *
 * @author mark
 * @since 2019-08-13
 */
@Data
@Accessors(chain = true)
public class PluginInfoQO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 名称 
     */
    private String name;
    /**
     * 描述
     */
    private String description;
    /**
     * 计量单位: 1: 件 2:套
     */
    private Integer unit;
    /**
     * 长度
     */
    private Integer width;
    /**
     * 宽度
     */
    private Integer height;
    /**
     * 重量
     */
    private Integer weight;
    /**
     * 颜色
     */
    private String color;
    /**
     * 品牌
     */
    private String brand;
    /**
     * 价格
     */
    private Integer price;
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
}
