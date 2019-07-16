package com.roncoo.recharge.common.mapper;

import com.roncoo.recharge.common.entity.TemplateInfo;
import com.roncoo.recharge.common.entity.TemplateInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface TemplateInfoMapper {
    int countByExample(TemplateInfoExample example);

    int deleteByExample(TemplateInfoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TemplateInfo record);

    int insertSelective(TemplateInfo record);

    List<TemplateInfo> selectByExample(TemplateInfoExample example);

    TemplateInfo selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TemplateInfo record, @Param("example") TemplateInfoExample example);

    int updateByExample(@Param("record") TemplateInfo record, @Param("example") TemplateInfoExample example);

    int updateByPrimaryKeySelective(TemplateInfo record);

    int updateByPrimaryKey(TemplateInfo record);
}