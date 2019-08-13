package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.PluginImage;
import com.roncoo.recharge.common.entity.PluginImageExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface PluginImageDao {
    int insert(PluginImage record);

    int save(PluginImage record);

    int deleteByExample(PluginImageExample example);

    int deleteById(Long id);

    int updateById(PluginImage record);

    int updateByPrimaryKey(PluginImage record);

    int updateByExampleSelective(PluginImage record, PluginImageExample example);

    int updateByExample(PluginImage record, PluginImageExample example);

    PluginImage getById(Long id);

    List<PluginImage> listByExample(PluginImageExample example);

    int countByExample(PluginImageExample example);

    Page<PluginImage> listForPage(int pageCurrent, int pageSize, PluginImageExample example);
}