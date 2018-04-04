package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.DdProduct;
import com.roncoo.recharge.common.entity.DdProductExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface DdProductDao {
    int save(DdProduct record);

    int deleteById(Long id);

    int updateById(DdProduct record);

    DdProduct getById(Long id);

    List<DdProduct> listByExample(DdProductExample example);

    Page<DdProduct> listForPage(int pageCurrent, int pageSize, DdProductExample example);
}