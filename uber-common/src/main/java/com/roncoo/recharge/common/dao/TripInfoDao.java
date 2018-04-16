package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.TripInfo;
import com.roncoo.recharge.common.entity.TripInfoExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface TripInfoDao {
    int save(TripInfo record);

    int deleteById(Long id);

    int updateById(TripInfo record);

    TripInfo getById(Long id);

    List<TripInfo> listByExample(TripInfoExample example);

    Page<TripInfo> listForPage(int pageCurrent, int pageSize, TripInfoExample example);
}