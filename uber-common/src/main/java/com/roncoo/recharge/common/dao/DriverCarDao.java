package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.DriverCar;
import com.roncoo.recharge.common.entity.DriverCarExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface DriverCarDao {
    int save(DriverCar record);

    int deleteById(Long id);

    int updateById(DriverCar record);

    DriverCar getById(Long id);

    List<DriverCar> listByExample(DriverCarExample example);

    Page<DriverCar> listForPage(int pageCurrent, int pageSize, DriverCarExample example);
}