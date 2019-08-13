package com.roncoo.recharge.web.bean.qo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author mark
 * @since 2019-08-13
 */
@Data
@Accessors(chain = true)
public class TemplateImageQO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 所属模版Id
     */
    private Long templateId;
    /**
     * 图片Id
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
