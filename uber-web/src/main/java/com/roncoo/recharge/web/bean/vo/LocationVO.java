package com.roncoo.recharge.web.bean.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 地理信息表
 * </p>
 *
 * @author mark
 * @since 2018-04-12
 */
@Data
@Accessors(chain = true)
public class LocationVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 经度
     */
    private String latitude;
    /**
     * 纬度
     */
    private String longitude;
    /**
     * 哈希值
     */
    private String geoHash;
    /**
     * 地址
     */
    private String address;
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
