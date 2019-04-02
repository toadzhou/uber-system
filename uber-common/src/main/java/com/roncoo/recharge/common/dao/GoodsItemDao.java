package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.GoodsItem;
import com.roncoo.recharge.common.entity.GoodsItemExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface GoodsItemDao {
    int insert(GoodsItem record);

    int save(GoodsItem record);

    int deleteByExample(GoodsItemExample example);

    int deleteById(Long id);

    int updateById(GoodsItem record);

    int updateByPrimaryKey(GoodsItem record);

    int updateByExampleSelective(GoodsItem record, GoodsItemExample example);

    int updateByExample(GoodsItem record, GoodsItemExample example);

    GoodsItem getById(Long id);

    List<GoodsItem> listByExample(GoodsItemExample example);

    int countByExample(GoodsItemExample example);

    Page<GoodsItem> listForPage(int pageCurrent, int pageSize, GoodsItemExample example);
}