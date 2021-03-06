package com.roncoo.recharge.web.bean.vo;

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
 * @since 2019-07-14
 */
@Data
@Accessors(chain = true)
public class PictureUnitVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 图片名称
     */
    private String name;
    /**
     * 图片地址
     */
    private String urlPath;
    /**
     * 状态: 0-失效 1-有效
     */
    private Integer status;
    /**
     * 状态描述
     */
    private String statusText;
    /**
     * 长度
     */
    private Integer width;
    /**
     * 宽度
     */
    private Integer height;
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
