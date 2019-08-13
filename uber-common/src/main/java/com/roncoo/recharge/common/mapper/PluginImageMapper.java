package com.roncoo.recharge.common.mapper;

import com.roncoo.recharge.common.entity.PluginImage;
import com.roncoo.recharge.common.entity.PluginImageExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface PluginImageMapper {
    int countByExample(PluginImageExample example);

    int deleteByExample(PluginImageExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PluginImage record);

    int insertSelective(PluginImage record);

    List<PluginImage> selectByExample(PluginImageExample example);

    PluginImage selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") PluginImage record, @Param("example") PluginImageExample example);

    int updateByExample(@Param("record") PluginImage record, @Param("example") PluginImageExample example);

    int updateByPrimaryKeySelective(PluginImage record);

    int updateByPrimaryKey(PluginImage record);
}