package com.roncoo.recharge.web.bean.qo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 属性选项值
 * </p>
 *
 * @author mark
 * @since 2019-04-01
 */
@Data
@Accessors(chain = true)
public class AttributeOptionQO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    private Long id;
    /**
     * 选项值
     */
    private String optionName;
    /**
     * 关联属性Id
     */
    private Long attributeId;
    /**
     * 排序
     */
    private Integer sort;
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
