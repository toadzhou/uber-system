package com.roncoo.recharge.facade.bean.dto;

import lombok.Data;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2019/5/27 16:39
 */
@Data
public class GoodsDTO {

    private Long id;

    private String goodsName;

    private List<GoodsCommentDTO> goodsCommentList;

    private List<String> titleList;


}
