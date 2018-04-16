package com.roncoo.recharge.web.bean.qo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 打车行程
 * </p>
 *
 * @author mark
 * @since 2018-04-16
 */
@Data
@Accessors(chain = true)
public class TripInfoQO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 所属请求Id
     */
    private Long requestId;
    /**
     * 所属乘客Id
     */
    private Long passengerId;
    /**
     * 司机Id
     */
    private Long driverId;
    /**
     * 所属车辆Id
     */
    private Long carId;
    /**
     * 状态: 0-取消订单 1-司机接驾 2-司机到达 3-开始行程 4-结束行程 5-互评
     */
    private Integer status;
    /**
     * 上车时间
     */
    private Date pickUpTime;
    /**
     * 下车时间
     */
    private Date dropOfTime;
    /**
     * 价格
     */
    private BigDecimal price;
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
