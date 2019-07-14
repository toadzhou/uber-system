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
 * @since 2019-07-14
 */
@Data
@Accessors(chain = true)
public class CompanyQO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 公司名称
     */
    private String name;
    /**
     * 状态: 0-无效 1-有效
     */
    private Integer status;
    /**
     * 电话
     */
    private String phone;
    /**
     * 地址
     */
    private String address;
    /**
     * 经度
     */
    private String latitude;
    /**
     * 纬度
     */
    private String longitude;
    /**
     * 负责人姓名
     */
    private String ownerName;
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
