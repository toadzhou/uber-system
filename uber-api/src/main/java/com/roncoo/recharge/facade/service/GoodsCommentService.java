package com.roncoo.recharge.facade.service;

import com.roncoo.recharge.common.entity.GoodsComment;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2019/5/27 16:35
 */
public interface GoodsCommentService {

    List<GoodsComment> queryForList(Long goodsId);



}
