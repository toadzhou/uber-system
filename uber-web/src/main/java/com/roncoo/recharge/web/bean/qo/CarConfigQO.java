package com.roncoo.recharge.web.bean.qo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 车型基础数据
 * </p>
 *
 * @author mark
 * @since 2018-04-10
 */
@Data
@Accessors(chain = true)
public class CarConfigQO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    private Integer sonId;
    private Integer parentId;
    /**
     * 名称
     */
    private String name;
    /**
     * 全名
     */
    private String fullName;
    /**
     * 简写
     */
    private String initial;
    /**
     * logo
     */
    private String logo;
    /**
     * 1级为车品牌，2级为车品牌子公司，3级为车型，4级为具体的车款
     */
    private Integer depth;
    /**
     * 销售状态
     */
    private String saleState;
    /**
     * 价格
     */
    private String price;
    /**
     * 年份
     */
    private String yearType;
    /**
     * 是否在产
     */
    private String productionState;
    /**
     * 车型
     */
    private String sizeType;
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
