package com.roncoo.recharge.web.bean.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 打车请求信息
 * </p>
 *
 * @author mark
 * @since 2018-04-16
 */
@Data
@Accessors(chain = true)
public class RequestInfoVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 出发地
     */
    private Long departureId;
    /**
     * 出发地
     */
    private Long destinationId;
    /**
     * 乘客Id
     */
    private Long passengerId;
    /**
     * 是否加价: 0 否 1 是
     */
    private Integer surge;
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
