package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.PassengerDao;
import com.roncoo.recharge.common.dao.impl.mapper.PassengerMapper;
import com.roncoo.recharge.common.entity.Passenger;
import com.roncoo.recharge.common.entity.PassengerExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PassengerDaoImpl implements PassengerDao {
    @Autowired
    private PassengerMapper passengerMapper;

    public int save(Passenger record) {
        return this.passengerMapper.insertSelective(record);
    }

    public int deleteById(Long id) {
        return this.passengerMapper.deleteByPrimaryKey(id);
    }

    public int updateById(Passenger record) {
        return this.passengerMapper.updateByPrimaryKeySelective(record);
    }

    public List<Passenger> listByExample(PassengerExample example) {
        return this.passengerMapper.selectByExample(example);
    }

    public Passenger getById(Long id) {
        return this.passengerMapper.selectByPrimaryKey(id);
    }

    public Page<Passenger> listForPage(int pageCurrent, int pageSize, PassengerExample example) {
        int count = this.passengerMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<Passenger>(count, totalPage, pageCurrent, pageSize, this.passengerMapper.selectByExample(example));
    }
}