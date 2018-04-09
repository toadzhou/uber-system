package com.roncoo.recharge.web.bean.vo;

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
 * @since 2018-04-09
 */
@Data
@Accessors(chain = true)
public class CarConfigVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    private Integer sonId;
    private Integer parentId;
    private String name;
    private String fullName;
    private String initial;
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
     * 车型(紧凑)
     */
    private String sizeType;



}
