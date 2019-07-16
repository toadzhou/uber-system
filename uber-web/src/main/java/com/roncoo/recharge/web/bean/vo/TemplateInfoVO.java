package com.roncoo.recharge.web.bean.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 模板信息 
 * </p>
 *
 * @author mark
 * @since 2019-07-16
 */
@Data
@Accessors(chain = true)
public class TemplateInfoVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 模板名称
     */
    private String name;
    /**
     * 长度
     */
    private Integer width;
    /**
     * 宽度
     */
    private Integer height;
    /**
     * 所属图片 Id
     */
    private Long imageId;
    /**
     * 价格(单位: 分)
     */
    private Integer price;
    /**
     * 计量单位
     */
    private String unit;
    /**
     * 备注
     */
    private String remark;
    /**
     * 状态: 0-无效 1-有效
     */
    private Integer status;
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
