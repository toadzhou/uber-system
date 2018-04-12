package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.DriverLocationDao;
import com.roncoo.recharge.common.dao.impl.mapper.DriverLocationMapper;
import com.roncoo.recharge.common.entity.DriverLocation;
import com.roncoo.recharge.common.entity.DriverLocationExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DriverLocationDaoImpl implements DriverLocationDao {
    @Autowired
    private DriverLocationMapper driverLocationMapper;

    public int save(DriverLocation record) {
        return this.driverLocationMapper.insertSelective(record);
    }

    public int deleteById(Long id) {
        return this.driverLocationMapper.deleteByPrimaryKey(id);
    }

    public int updateById(DriverLocation record) {
        return this.driverLocationMapper.updateByPrimaryKeySelective(record);
    }

    public List<DriverLocation> listByExample(DriverLocationExample example) {
        return this.driverLocationMapper.selectByExample(example);
    }

    public DriverLocation getById(Long id) {
        return this.driverLocationMapper.selectByPrimaryKey(id);
    }

    public Page<DriverLocation> listForPage(int pageCurrent, int pageSize, DriverLocationExample example) {
        int count = this.driverLocationMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<DriverLocation>(count, totalPage, pageCurrent, pageSize, this.driverLocationMapper.selectByExample(example));
    }
}