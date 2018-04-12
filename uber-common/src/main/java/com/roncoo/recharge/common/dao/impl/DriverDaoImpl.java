package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.DriverDao;
import com.roncoo.recharge.common.dao.impl.mapper.DriverMapper;
import com.roncoo.recharge.common.entity.Driver;
import com.roncoo.recharge.common.entity.DriverExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DriverDaoImpl implements DriverDao {
    @Autowired
    private DriverMapper driverMapper;

    public int save(Driver record) {
        return this.driverMapper.insertSelective(record);
    }

    public int deleteById(Long id) {
        return this.driverMapper.deleteByPrimaryKey(id);
    }

    public int updateById(Driver record) {
        return this.driverMapper.updateByPrimaryKeySelective(record);
    }

    public List<Driver> listByExample(DriverExample example) {
        return this.driverMapper.selectByExample(example);
    }

    public Driver getById(Long id) {
        return this.driverMapper.selectByPrimaryKey(id);
    }

    public Page<Driver> listForPage(int pageCurrent, int pageSize, DriverExample example) {
        int count = this.driverMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<Driver>(count, totalPage, pageCurrent, pageSize, this.driverMapper.selectByExample(example));
    }
}