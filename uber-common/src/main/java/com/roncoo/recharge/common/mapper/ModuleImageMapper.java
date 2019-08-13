package com.roncoo.recharge.common.mapper;

import com.roncoo.recharge.common.entity.ModuleImage;
import com.roncoo.recharge.common.entity.ModuleImageExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ModuleImageMapper {
    int countByExample(ModuleImageExample example);

    int deleteByExample(ModuleImageExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ModuleImage record);

    int insertSelective(ModuleImage record);

    List<ModuleImage> selectByExample(ModuleImageExample example);

    ModuleImage selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ModuleImage record, @Param("example") ModuleImageExample example);

    int updateByExample(@Param("record") ModuleImage record, @Param("example") ModuleImageExample example);

    int updateByPrimaryKeySelective(ModuleImage record);

    int updateByPrimaryKey(ModuleImage record);
}