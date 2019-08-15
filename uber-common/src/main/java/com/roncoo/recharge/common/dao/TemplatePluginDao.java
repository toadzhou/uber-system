package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.TemplatePlugin;
import com.roncoo.recharge.common.entity.TemplatePluginExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface TemplatePluginDao {
    int insert(TemplatePlugin record);

    int save(TemplatePlugin record);

    int deleteByExample(TemplatePluginExample example);

    int deleteById(Long id);

    int updateById(TemplatePlugin record);

    int updateByPrimaryKey(TemplatePlugin record);

    int updateByExampleSelective(TemplatePlugin record, TemplatePluginExample example);

    int updateByExample(TemplatePlugin record, TemplatePluginExample example);

    TemplatePlugin getById(Long id);

    List<TemplatePlugin> listByExample(TemplatePluginExample example);

    int countByExample(TemplatePluginExample example);

    Page<TemplatePlugin> listForPage(int pageCurrent, int pageSize, TemplatePluginExample example);
}