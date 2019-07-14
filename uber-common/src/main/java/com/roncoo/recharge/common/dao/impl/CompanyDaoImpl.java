package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.CompanyDao;
import com.roncoo.recharge.common.entity.Company;
import com.roncoo.recharge.common.entity.CompanyExample;
import com.roncoo.recharge.common.mapper.CompanyMapper;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyDaoImpl implements CompanyDao {
    @Autowired
    private CompanyMapper companyMapper;

    public int insert(Company record) {
        return this.companyMapper.insert(record);
    }

    public int save(Company record) {
        return this.companyMapper.insertSelective(record);
    }

    public int deleteByExample(CompanyExample example) {
        return this.companyMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.companyMapper.deleteByPrimaryKey(id);
    }

    public int updateById(Company record) {
        return this.companyMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Company record) {
        return this.companyMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(Company record, CompanyExample example) {
        return this.companyMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(Company record, CompanyExample example) {
        return this.companyMapper.updateByExample(record, example);
    }

    public List<Company> listByExample(CompanyExample example) {
        return this.companyMapper.selectByExample(example);
    }

    public Company getById(Long id) {
        return this.companyMapper.selectByPrimaryKey(id);
    }

    public int countByExample(CompanyExample example) {
        return this.companyMapper.countByExample(example);
    }

    public Page<Company> listForPage(int pageCurrent, int pageSize, CompanyExample example) {
        int count = this.companyMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<Company>(count, totalPage, pageCurrent, pageSize, this.companyMapper.selectByExample(example));
    }
}