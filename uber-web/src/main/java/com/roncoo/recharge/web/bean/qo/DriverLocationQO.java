package com.roncoo.recharge.web.bean.qo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 司机位置
 * </p>
 *
 * @author mark
 * @since 2018-04-12
 */
@Data
@Accessors(chain = true)
public class DriverLocationQO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 关联司机Id
     */
    private Long driverId;
    private Long locationId;
    /**
     * 状态: 0 无效 1 有效
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
