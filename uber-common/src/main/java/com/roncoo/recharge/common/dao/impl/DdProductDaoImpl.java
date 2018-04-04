package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.DdProductDao;
import com.roncoo.recharge.common.dao.impl.mapper.DdProductMapper;
import com.roncoo.recharge.common.entity.DdProduct;
import com.roncoo.recharge.common.entity.DdProductExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DdProductDaoImpl implements DdProductDao {
    @Autowired
    private DdProductMapper ddProductMapper;

    public int save(DdProduct record) {
        return this.ddProductMapper.insertSelective(record);
    }

    public int deleteById(Long id) {
        return this.ddProductMapper.deleteByPrimaryKey(id);
    }

    public int updateById(DdProduct record) {
        return this.ddProductMapper.updateByPrimaryKeySelective(record);
    }

    public List<DdProduct> listByExample(DdProductExample example) {
        return this.ddProductMapper.selectByExample(example);
    }

    public DdProduct getById(Long id) {
        return this.ddProductMapper.selectByPrimaryKey(id);
    }

    public Page<DdProduct> listForPage(int pageCurrent, int pageSize, DdProductExample example) {
        int count = this.ddProductMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<DdProduct>(count, totalPage, pageCurrent, pageSize, this.ddProductMapper.selectByExample(example));
    }
}