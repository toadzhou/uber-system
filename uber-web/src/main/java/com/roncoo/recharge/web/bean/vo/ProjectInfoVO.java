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
 * @since 2019-08-13
 */
@Data
@Accessors(chain = true)
public class ProjectInfoVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 项目名称
     */
    private String name;
    /**
     * 所属公司ID
     */
    private Long companyId;
    /**
     * 状态: 0-待处理 1-进行中 2-已完成
     */
    private Integer status;
    /**
     * 甲方预算(单位: 分)
     */
    private BigDecimal budget;
    /**
     * 项目周期(单位:天)
     */
    private Integer cycle;
    /**
     * 开始日期
     */
    private Date startDate;
    /**
     * 结束日期
     */
    private Date endDate;
    /**
     * 对接人姓名
     */
    private String masterName;
    /**
     * 对接人电话
     */
    private String masterPhone;
    /**
     * 房间数
     */
    private Integer roomNumber;
    /**
     * 公区数
     */
    private Integer publicNumber;
    /**
     * 备注
     */
    private String remark;
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
