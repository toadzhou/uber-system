package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.DriverCarDao;
import com.roncoo.recharge.common.dao.impl.mapper.DriverCarMapper;
import com.roncoo.recharge.common.entity.DriverCar;
import com.roncoo.recharge.common.entity.DriverCarExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DriverCarDaoImpl implements DriverCarDao {
    @Autowired
    private DriverCarMapper driverCarMapper;

    public int save(DriverCar record) {
        return this.driverCarMapper.insertSelective(record);
    }

    public int deleteById(Long id) {
        return this.driverCarMapper.deleteByPrimaryKey(id);
    }

    public int updateById(DriverCar record) {
        return this.driverCarMapper.updateByPrimaryKeySelective(record);
    }

    public List<DriverCar> listByExample(DriverCarExample example) {
        return this.driverCarMapper.selectByExample(example);
    }

    public DriverCar getById(Long id) {
        return this.driverCarMapper.selectByPrimaryKey(id);
    }

    public Page<DriverCar> listForPage(int pageCurrent, int pageSize, DriverCarExample example) {
        int count = this.driverCarMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<DriverCar>(count, totalPage, pageCurrent, pageSize, this.driverCarMapper.selectByExample(example));
    }
}