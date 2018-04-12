package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.DriverLocation;
import com.roncoo.recharge.common.entity.DriverLocationExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface DriverLocationDao {
    int save(DriverLocation record);

    int deleteById(Long id);

    int updateById(DriverLocation record);

    DriverLocation getById(Long id);

    List<DriverLocation> listByExample(DriverLocationExample example);

    Page<DriverLocation> listForPage(int pageCurrent, int pageSize, DriverLocationExample example);
}