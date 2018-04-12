package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.LocationDao;
import com.roncoo.recharge.common.dao.impl.mapper.LocationMapper;
import com.roncoo.recharge.common.entity.Location;
import com.roncoo.recharge.common.entity.LocationExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LocationDaoImpl implements LocationDao {
    @Autowired
    private LocationMapper locationMapper;

    public Long save(Location record) {
        this.locationMapper.insertSelective(record);
        return record.getId();
    }

    public int deleteById(Long id) {
        return this.locationMapper.deleteByPrimaryKey(id);
    }

    public int updateById(Location record) {
        return this.locationMapper.updateByPrimaryKeySelective(record);
    }

    public List<Location> listByExample(LocationExample example) {
        return this.locationMapper.selectByExample(example);
    }

    public Location getById(Long id) {
        return this.locationMapper.selectByPrimaryKey(id);
    }

    public Page<Location> listForPage(int pageCurrent, int pageSize, LocationExample example) {
        int count = this.locationMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<Location>(count, totalPage, pageCurrent, pageSize, this.locationMapper.selectByExample(example));
    }
}