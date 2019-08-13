package com.roncoo.recharge.web.bean.qo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 模块图片
 * </p>
 *
 * @author mark
 * @since 2019-08-13
 */
@Data
@Accessors(chain = true)
public class ModuleImageQO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 所属模块Id
     */
    private Long moduleId;
    /**
     * 所属图片Id
     */
    private Long imageId;
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
