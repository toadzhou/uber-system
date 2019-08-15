package com.roncoo.recharge.common.mapper;

import com.roncoo.recharge.common.entity.TemplatePlugin;
import com.roncoo.recharge.common.entity.TemplatePluginExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface TemplatePluginMapper {
    int countByExample(TemplatePluginExample example);

    int deleteByExample(TemplatePluginExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TemplatePlugin record);

    int insertSelective(TemplatePlugin record);

    List<TemplatePlugin> selectByExample(TemplatePluginExample example);

    TemplatePlugin selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TemplatePlugin record, @Param("example") TemplatePluginExample example);

    int updateByExample(@Param("record") TemplatePlugin record, @Param("example") TemplatePluginExample example);

    int updateByPrimaryKeySelective(TemplatePlugin record);

    int updateByPrimaryKey(TemplatePlugin record);
}