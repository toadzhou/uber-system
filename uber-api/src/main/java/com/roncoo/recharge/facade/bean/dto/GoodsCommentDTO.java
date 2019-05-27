package com.roncoo.recharge.facade.bean.dto;

import lombok.Data;

/**
 * 〈一句话功能简述〉<br>
 * Description: 商品评论
 *
 * @author xierongli
 * @create 2019/5/27 16:40
 */
@Data
public class GoodsCommentDTO {

    private String title;

    private String description;

    private Integer level;

    private Integer status;

}
