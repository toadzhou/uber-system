package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.Location;
import com.roncoo.recharge.common.entity.LocationExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface LocationDao {
    Long save(Location record);

    int deleteById(Long id);

    int updateById(Location record);

    Location getById(Long id);

    List<Location> listByExample(LocationExample example);

    Page<Location> listForPage(int pageCurrent, int pageSize, LocationExample example);
}