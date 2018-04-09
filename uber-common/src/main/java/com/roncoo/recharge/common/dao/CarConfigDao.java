package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.CarConfig;
import com.roncoo.recharge.common.entity.CarConfigExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface CarConfigDao {
    int save(CarConfig record);

    int deleteById(Long id);

    int updateById(CarConfig record);

    CarConfig getById(Long id);

    List<CarConfig> listByExample(CarConfigExample example);

    Page<CarConfig> listForPage(int pageCurrent, int pageSize, CarConfigExample example);
}