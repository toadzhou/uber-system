package com.roncoo.recharge.web.bean.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * SKU商品项目表(最小库存单位)
 * </p>
 *
 * @author mark
 * @since 2019-04-02
 */
@Data
@Accessors(chain = true)
public class GoodsItemVO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    private Long id;
    /**
     * SKU商品标题
     */
    private String title;
    /**
     * 商品卖点
     */
    private String sellPoint;
    /**
     * 是否启用: 0不启用 1启用
     */
    private Integer status;
    /**
     * 商品价格(单位:分)
     */
    private Integer prices;
    /**
     * 库存数量
     */
    private Integer stockNumber;
    /**
     * 所属类目(最小类目Id)
     */
    private Long categoryId;
    /**
     * 商品二维码
     */
    private String barcode;
    /**
     * 成本价
     */
    private Integer costPrice;
    /**
     * 市场价
     */
    private Integer marketPrice;
    /**
     * 是否默认 0否 
     */
    private Integer isDefault;



}
