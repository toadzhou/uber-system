package com.roncoo.recharge.common.mapper;

import com.roncoo.recharge.common.entity.TemplateImage;
import com.roncoo.recharge.common.entity.TemplateImageExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface TemplateImageMapper {
    int countByExample(TemplateImageExample example);

    int deleteByExample(TemplateImageExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TemplateImage record);

    int insertSelective(TemplateImage record);

    List<TemplateImage> selectByExample(TemplateImageExample example);

    TemplateImage selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TemplateImage record, @Param("example") TemplateImageExample example);

    int updateByExample(@Param("record") TemplateImage record, @Param("example") TemplateImageExample example);

    int updateByPrimaryKeySelective(TemplateImage record);

    int updateByPrimaryKey(TemplateImage record);
}