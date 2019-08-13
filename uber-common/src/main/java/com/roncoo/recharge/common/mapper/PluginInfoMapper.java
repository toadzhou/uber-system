package com.roncoo.recharge.common.mapper;

import com.roncoo.recharge.common.entity.PluginInfo;
import com.roncoo.recharge.common.entity.PluginInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface PluginInfoMapper {
    int countByExample(PluginInfoExample example);

    int deleteByExample(PluginInfoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PluginInfo record);

    int insertSelective(PluginInfo record);

    List<PluginInfo> selectByExample(PluginInfoExample example);

    PluginInfo selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") PluginInfo record, @Param("example") PluginInfoExample example);

    int updateByExample(@Param("record") PluginInfo record, @Param("example") PluginInfoExample example);

    int updateByPrimaryKeySelective(PluginInfo record);

    int updateByPrimaryKey(PluginInfo record);
}