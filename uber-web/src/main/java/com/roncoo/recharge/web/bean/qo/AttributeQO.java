package com.roncoo.recharge.web.bean.qo;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * <p>
 * 属性表
 * </p>
 *
 * @author mark
 * @since 2019-03-27
 */
@Data
@Accessors(chain = true)
public class AttributeQO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 所属分类(最小分类)
     */
    private Long goodsTypeId;
    /**
     * 分类名称
     */
    private String attrName;
    /**
     *  0为类别:0手功输入;1为选择输入;2为多行文本输入
     */
    private Byte attrInputType;
    /**
     * SKU属性; 0否; 1是
     */
    private Byte attrType;
    /**
     * 即选择输入,则attr_name对应的值的取值就是该这字段值
     */
    private String attrValues;
    /**
     * 性是否可以检索;0不需要检索; 1关键字检索2范围检索,该属性应该是如果检索的话,可以通过该属性找到有该属性的商品
     */
    private Byte attrIndex;
    /**
     * 属性排序,数字越大越靠前,如果数字一样则按id顺序
     */
    private Integer sortOrder;
    /**
     * 是否关联,0 不关联 1关联; 如果关联, 那么用户在购买该商品时,具有有该属性相同的商品将被推荐给用户
     */
    private Integer isLinked;
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
