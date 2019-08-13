package com.roncoo.recharge.web.bean.qo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 模块信息
 * </p>
 *
 * @author mark
 * @since 2019-08-13
 */
@Data
@Accessors(chain = true)
public class ModuleInfoQO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 模块名称
     */
    private String name;
    /**
     * 状态: 0无效 1有效
     */
    private Integer status;
    /**
     * 数量
     */
    private Integer number;
    /**
     * 计量单位
     */
    private Integer unit;
    /**
     * 价格(单位:分)
     */
    private Integer price;
    /**
     * 品牌
     */
    private String brand;
    /**
     * 颜色
     */
    private byte[] color;
    /**
     * 长度
     */
    private Integer width;
    /**
     * 高度
     */
    private Integer height;
    /**
     * 重量
     */
    private Integer weight;
    /**
     * 备注
     */
    private String remark;
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
