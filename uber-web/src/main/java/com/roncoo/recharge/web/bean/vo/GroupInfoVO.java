package com.roncoo.recharge.web.bean.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 组件信息
 * </p>
 *
 * @author mark
 * @since 2019-08-13
 */
@Data
@Accessors(chain = true)
public class GroupInfoVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 组件名称
     */
    private String name;
    /**
     * 状态:0无效  1有效
     */
    private Integer status;
    /**
     * 类型: 1房间 2公区
     */
    private Integer type;
    /**
     * 模版图片
     */
    private Long imageId;
    /**
     * 成本(单位: 分)
     */
    private Integer cost;
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
