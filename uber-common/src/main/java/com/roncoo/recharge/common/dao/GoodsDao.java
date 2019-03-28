package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.Goods;
import com.roncoo.recharge.common.entity.GoodsExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface GoodsDao {
    int insert(Goods record);

    int save(Goods record);

    int deleteByExample(GoodsExample example);

    int deleteById(Long id);

    int updateById(Goods record);

    int updateByPrimaryKey(Goods record);

    int updateByExampleSelective(Goods record, GoodsExample example);

    int updateByExample(Goods record, GoodsExample example);

    Goods getById(Long id);

    List<Goods> listByExample(GoodsExample example);

    int countByExample(GoodsExample example);

    Page<Goods> listForPage(int pageCurrent, int pageSize, GoodsExample example);
}