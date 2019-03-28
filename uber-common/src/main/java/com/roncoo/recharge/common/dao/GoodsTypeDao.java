package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.GoodsType;
import com.roncoo.recharge.common.entity.GoodsTypeExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface GoodsTypeDao {
    int insert(GoodsType record);

    int save(GoodsType record);

    int deleteByExample(GoodsTypeExample example);

    int deleteById(Long id);

    int updateById(GoodsType record);

    int updateByPrimaryKey(GoodsType record);

    int updateByExampleSelective(GoodsType record, GoodsTypeExample example);

    int updateByExample(GoodsType record, GoodsTypeExample example);

    GoodsType getById(Long id);

    List<GoodsType> listByExample(GoodsTypeExample example);

    int countByExample(GoodsTypeExample example);

    Page<GoodsType> listForPage(int pageCurrent, int pageSize, GoodsTypeExample example);
}