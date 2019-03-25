package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.BrandDao;
import com.roncoo.recharge.common.dao.impl.mapper.BrandMapper;
import com.roncoo.recharge.common.entity.Brand;
import com.roncoo.recharge.common.entity.BrandExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BrandDaoImpl implements BrandDao {
    @Autowired
    private BrandMapper brandMapper;

    public int insert(Brand record) {
        return this.brandMapper.insert(record);
    }

    public int save(Brand record) {
        return this.brandMapper.insertSelective(record);
    }

    public int deleteByExample(BrandExample example) {
        return this.brandMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.brandMapper.deleteByPrimaryKey(id);
    }

    public int updateById(Brand record) {
        return this.brandMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Brand record) {
        return this.brandMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(Brand record, BrandExample example) {
        return this.brandMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(Brand record, BrandExample example) {
        return this.brandMapper.updateByExample(record, example);
    }

    public List<Brand> listByExample(BrandExample example) {
        return this.brandMapper.selectByExample(example);
    }

    public Brand getById(Long id) {
        return this.brandMapper.selectByPrimaryKey(id);
    }

    public int countByExample(BrandExample example) {
        return this.brandMapper.countByExample(example);
    }

    public Page<Brand> listForPage(int pageCurrent, int pageSize, BrandExample example) {
        int count = this.brandMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<Brand>(count, totalPage, pageCurrent, pageSize, this.brandMapper.selectByExample(example));
    }
}