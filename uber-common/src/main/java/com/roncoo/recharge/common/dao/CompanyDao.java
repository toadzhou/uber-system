package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.Company;
import com.roncoo.recharge.common.entity.CompanyExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface CompanyDao {
    int insert(Company record);

    int save(Company record);

    int deleteByExample(CompanyExample example);

    int deleteById(Long id);

    int updateById(Company record);

    int updateByPrimaryKey(Company record);

    int updateByExampleSelective(Company record, CompanyExample example);

    int updateByExample(Company record, CompanyExample example);

    Company getById(Long id);

    List<Company> listByExample(CompanyExample example);

    int countByExample(CompanyExample example);

    Page<Company> listForPage(int pageCurrent, int pageSize, CompanyExample example);
}