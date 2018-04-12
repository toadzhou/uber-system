package com.roncoo.recharge.web.bean.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 司机车辆
 * </p>
 *
 * @author mark
 * @since 2018-04-12
 */
@Data
@Accessors(chain = true)
public class DriverCarVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    private Long driverId;
    private Long carId;
    /**
     * 牌照
     */
    private String licenseNumber;
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
