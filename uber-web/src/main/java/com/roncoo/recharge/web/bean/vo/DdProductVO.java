package com.roncoo.recharge.web.bean.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 借款产品表
 * </p>
 *
 * @author mark
 * @since 2018-04-02
 */
@Data
@Accessors(chain = true)
public class DdProductVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 产品名称
     */
    private String productName;
    /**
     * 产品代码
     */
    private String productCode;
    /**
     * 产品描述
     */
    private String description;
    /**
     * 最低可申请额度(单位：元)
     */
    private Long amountMin;
    /**
     * 最高可申请额度（单位：元）
     */
    private Long amountMax;
    /**
     * 放款周期：单位天
     */
    private String loanTerm;
    /**
     * 状态: 0 下架 1 上架 2 作废
     */
    private Integer status;
    /**
     * 缩略图
     */
    private String iconUrl;
    /**
     * 还款方式: 1.等额本息  2.到期还本付息 3.其他
     */
    private Integer repayType;
    /**
     * 最低利率（单位：%）
     */
    private BigDecimal interestMin;
    /**
     * 最大利率（单位：%）
     */
    private BigDecimal interestMax;
    /**
     * 利率单位: 年(year) 月(month) 日(day)
     */
    private String interestUnit;
    /**
     * 最低期限
     */
    private String termMin;
    /**
     * 最大期限
     */
    private String termMax;
    /**
     * 期限单位:  年(year) 月(month) 日(day)
     */
    private String termUnit;
    /**
     * 申请资格
     */
    private String applyCondition;
    /**
     * 申请材料
     */
    private String applyMaterial;
    /**
     * 认证配置: json格式存储
     */
    private String authConfig;
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
