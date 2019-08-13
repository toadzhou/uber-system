package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.ModuleImage;
import com.roncoo.recharge.common.entity.ModuleImageExample;
import com.roncoo.recharge.util.bjui.Page;

import java.util.List;

public interface ModuleImageDao {
    int insert(ModuleImage record);

    int save(ModuleImage record);

    int deleteByExample(ModuleImageExample example);

    int deleteById(Long id);

    int updateById(ModuleImage record);

    int updateByPrimaryKey(ModuleImage record);

    int updateByExampleSelective(ModuleImage record, ModuleImageExample example);

    int updateByExample(ModuleImage record, ModuleImageExample example);

    ModuleImage getById(Long id);

    List<ModuleImage> listByExample(ModuleImageExample example);

    int countByExample(ModuleImageExample example);

    Page<ModuleImage> listForPage(int pageCurrent, int pageSize, ModuleImageExample example);
}