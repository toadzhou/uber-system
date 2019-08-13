package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.ModuleInfo;
import com.roncoo.recharge.common.entity.ModuleInfoExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface ModuleInfoDao {
    int insert(ModuleInfo record);

    int save(ModuleInfo record);

    int deleteByExample(ModuleInfoExample example);

    int deleteById(Long id);

    int updateById(ModuleInfo record);

    int updateByPrimaryKey(ModuleInfo record);

    int updateByExampleSelective(ModuleInfo record, ModuleInfoExample example);

    int updateByExample(ModuleInfo record, ModuleInfoExample example);

    ModuleInfo getById(Long id);

    List<ModuleInfo> listByExample(ModuleInfoExample example);

    int countByExample(ModuleInfoExample example);

    Page<ModuleInfo> listForPage(int pageCurrent, int pageSize, ModuleInfoExample example);
}