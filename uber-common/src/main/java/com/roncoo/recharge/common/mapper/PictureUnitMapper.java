package com.roncoo.recharge.common.mapper;

import com.roncoo.recharge.common.entity.PictureUnit;
import com.roncoo.recharge.common.entity.PictureUnitExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface PictureUnitMapper {
    int countByExample(PictureUnitExample example);

    int deleteByExample(PictureUnitExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PictureUnit record);

    int insertSelective(PictureUnit record);

    List<PictureUnit> selectByExample(PictureUnitExample example);

    PictureUnit selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") PictureUnit record, @Param("example") PictureUnitExample example);

    int updateByExample(@Param("record") PictureUnit record, @Param("example") PictureUnitExample example);

    int updateByPrimaryKeySelective(PictureUnit record);

    int updateByPrimaryKey(PictureUnit record);
}