package com.roncoo.recharge.web.bean.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 商品表
 * </p>
 *
 * @author mark
 * @since 2019-03-28
 */
@Data
@Accessors(chain = true)
public class GoodsVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 商家Id
     */
    private Long sellerId;
    /**
     * 商品名称(SPU名称)
     */
    private String goodsName;
    /**
     * 商品描述
     */
    private String goodsDescription;
    /**
     * 默认SKU
     */
    private Long defaultItemId;
    /**
     * 是否上架(0否 1是)
     */
    private Integer isMarketable;
    /**
     * 所属品牌Id
     */
    private Long brandId;
    /**
     * 一级类目Id
     */
    private Long category1Id;
    /**
     * 二级类目Id
     */
    private Long category2Id;
    /**
     * 三级类目Id
     */
    private Long category3Id;
    /**
     * 小图
     */
    private String smallImage;
    /**
     * 商城价(单位:分)
     */
    private Integer price;
    /**
     * 分类模版Id
     */
    private Long typeTemplateId;
    /**
     * 是否开启规格(0否 1是)
     */
    private Integer isEnableSpec;
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
     * 品牌名称
     */
    private String brandName;

    /**
     * 一级类目名称
     */
    private String category1Name;
    /**
     * 二级类目名称
     */
    private String category2Name;
    /**
     * 三级类目名称
     */
    private String category3Name;
    /**
     * 商城价(元)
     */
    private double mallPrice;
    /**
     * 状态
     */
    private String statusText;





}
