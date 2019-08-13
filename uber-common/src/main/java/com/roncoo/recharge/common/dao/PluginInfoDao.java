package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.PluginInfo;
import com.roncoo.recharge.common.entity.PluginInfoExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface PluginInfoDao {
    int insert(PluginInfo record);

    int save(PluginInfo record);

    int deleteByExample(PluginInfoExample example);

    int deleteById(Long id);

    int updateById(PluginInfo record);

    int updateByPrimaryKey(PluginInfo record);

    int updateByExampleSelective(PluginInfo record, PluginInfoExample example);

    int updateByExample(PluginInfo record, PluginInfoExample example);

    PluginInfo getById(Long id);

    List<PluginInfo> listByExample(PluginInfoExample example);

    int countByExample(PluginInfoExample example);

    Page<PluginInfo> listForPage(int pageCurrent, int pageSize, PluginInfoExample example);
}