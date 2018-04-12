package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.Driver;
import com.roncoo.recharge.common.entity.DriverExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface DriverDao {
    int save(Driver record);

    int deleteById(Long id);

    int updateById(Driver record);

    Driver getById(Long id);

    List<Driver> listByExample(DriverExample example);

    Page<Driver> listForPage(int pageCurrent, int pageSize, DriverExample example);
}