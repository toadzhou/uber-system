package com.roncoo.recharge.web.bean.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 分类信息
 * </p>
 *
 * @author mark
 * @since 2019-03-25
 */
@Data
@Accessors(chain = true)
public class CategoryVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 分类名称
     */
    private String name;
    /**
     * 父节点Id
     */
    private Long parentId;
    /**
     * 类目图片
     */
    private String image;
    /**
     * 叶子结点: 0否 1是
     */
    private Integer isLeaf;
    /**
     * 排序
     */
    private Integer sort;
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

    private String goodsTypeText;

    private Long goodsTypeId;



}
