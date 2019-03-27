package com.roncoo.recharge.web.bean.qo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.web.multipart.MultipartFile;

/**
 * <p>
 * 分类信息
 * </p>
 *
 * @author mark
 * @since 2019-03-25
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class CategoryQO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 类目图片
     */
    private MultipartFile imageFile;

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
}
