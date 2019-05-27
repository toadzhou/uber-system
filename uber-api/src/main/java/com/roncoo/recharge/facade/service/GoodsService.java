package com.roncoo.recharge.facade.service;

import com.roncoo.recharge.facade.bean.dto.GoodsDTO;

/**
 * 〈一句话功能简述〉<br>
 * Description: 商品
 *
 * @author xierongli
 * @create 2019/5/27 16:17
 */
public interface GoodsService {


    GoodsDTO getById(Long id);

    /**
     * 根据评论等级查询商品
     * @param id 商品Id
     * @param level 等级
     * @return 商品信息&&评论
     */
    GoodsDTO getById(Long id, Integer level);

}
