package com.roncoo.recharge.web.bean.qo;

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
 * @since 2019-08-13
 */
@Data
@Accessors(chain = true)
public class TemplateInfoQO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 模板名称
     */
    private String name;
    /**
     * 状态: 0-无效 1-有效
     */
    private Integer status;
    /**
     * 模版图纸Id
     */
    private Long imageId;
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
