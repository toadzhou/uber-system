package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.Passenger;
import com.roncoo.recharge.common.entity.PassengerExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface PassengerDao {
    int save(Passenger record);

    int deleteById(Long id);

    int updateById(Passenger record);

    Passenger getById(Long id);

    List<Passenger> listByExample(PassengerExample example);

    Page<Passenger> listForPage(int pageCurrent, int pageSize, PassengerExample example);
}