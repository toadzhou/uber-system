package com.roncoo.recharge.common.mapper;

import com.roncoo.recharge.common.entity.ModuleInfo;
import com.roncoo.recharge.common.entity.ModuleInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ModuleInfoMapper {
    int countByExample(ModuleInfoExample example);

    int deleteByExample(ModuleInfoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ModuleInfo record);

    int insertSelective(ModuleInfo record);

    List<ModuleInfo> selectByExample(ModuleInfoExample example);

    ModuleInfo selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ModuleInfo record, @Param("example") ModuleInfoExample example);

    int updateByExample(@Param("record") ModuleInfo record, @Param("example") ModuleInfoExample example);

    int updateByPrimaryKeySelective(ModuleInfo record);

    int updateByPrimaryKey(ModuleInfo record);
}