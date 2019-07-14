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
public class ProjectInfoQO implements Serializable {

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
    private Integer budget;
    /**
     * 截至日期
     */
    private Date deadLine;
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
