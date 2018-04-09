package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.CarConfigDao;
import com.roncoo.recharge.common.dao.impl.mapper.CarConfigMapper;
import com.roncoo.recharge.common.entity.CarConfig;
import com.roncoo.recharge.common.entity.CarConfigExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CarConfigDaoImpl implements CarConfigDao {
    @Autowired
    private CarConfigMapper carConfigMapper;

    public int save(CarConfig record) {
        return this.carConfigMapper.insertSelective(record);
    }

    public int deleteById(Long id) {
        return this.carConfigMapper.deleteByPrimaryKey(id);
    }

    public int updateById(CarConfig record) {
        return this.carConfigMapper.updateByPrimaryKeySelective(record);
    }

    public List<CarConfig> listByExample(CarConfigExample example) {
        return this.carConfigMapper.selectByExample(example);
    }

    public CarConfig getById(Long id) {
        return this.carConfigMapper.selectByPrimaryKey(id);
    }

    public Page<CarConfig> listForPage(int pageCurrent, int pageSize, CarConfigExample example) {
        int count = this.carConfigMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<CarConfig>(count, totalPage, pageCurrent, pageSize, this.carConfigMapper.selectByExample(example));
    }
}