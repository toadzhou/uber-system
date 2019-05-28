package com.roncoo.recharge.facade.service;

import com.roncoo.recharge.common.entity.GoodsComment;
import org.springframework.cache.annotation.Cacheable;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2019/5/27 16:35
 */
public interface GoodsCommentService {

    @Cacheable(value = "goodsComment", key="#goodsId")
    List<GoodsComment> queryForList(Long goodsId);

    int add(String title, String description);



}
