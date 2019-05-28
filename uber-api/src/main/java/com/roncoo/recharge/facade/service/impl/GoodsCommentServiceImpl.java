package com.roncoo.recharge.facade.service.impl;

import com.roncoo.recharge.common.dao.GoodsCommentDao;
import com.roncoo.recharge.common.entity.GoodsComment;
import com.roncoo.recharge.common.entity.GoodsCommentExample;
import com.roncoo.recharge.facade.service.GoodsCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * Description: 商品评论
 *
 * @author xierongli
 * @create 2019/5/27 16:35
 */
@Service
public class GoodsCommentServiceImpl implements GoodsCommentService {

    @Autowired
    private GoodsCommentDao goodsCommentDao;

    @Override
    @Cacheable(value = "goodsComment", key="#goodsId")
    public List<GoodsComment> queryForList(Long goodsId) {
        GoodsCommentExample example = new GoodsCommentExample();
        GoodsCommentExample.Criteria c = example.createCriteria();
        example.setOrderByClause("id desc");
        if(goodsId != null){
            c.andGoodsIdEqualTo(goodsId);
        }
        return goodsCommentDao.listByExample(example);
    }
}
