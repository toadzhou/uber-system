package com.roncoo.recharge.web.bean.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 模版插件关联表
 * </p>
 *
 * @author mark
 * @since 2019-08-15
 */
@Data
@Accessors(chain = true)
public class TemplatePluginVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 模版Id
     */
    private Long templateId;
    /**
     * 插件Id
     */
    private Long pluginId;
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
