package com.roncoo.recharge.web.bean.qo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 司机基础信息
 * </p>
 *
 * @author mark
 * @since 2018-04-12
 */
@Data
@Accessors(chain = true)
public class DriverQO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 姓名
     */
    private String name;
    /**
     * 性别: 0 女 1 男
     */
    private Integer sex;
    /**
     * 手机号
     */
    private String phone;
    /**
     * 工作时长
     */
    private Double workingHours;
    /**
     * 评分
     */
    private Double rating;
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
