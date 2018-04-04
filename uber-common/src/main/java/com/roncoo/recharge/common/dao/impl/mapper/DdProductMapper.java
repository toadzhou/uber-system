package com.roncoo.recharge.common.dao.impl.mapper;

import com.roncoo.recharge.common.entity.DdProduct;
import com.roncoo.recharge.common.entity.DdProductExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface DdProductMapper {
    int countByExample(DdProductExample example);

    int deleteByExample(DdProductExample example);

    int deleteByPrimaryKey(Long id);

    int insert(DdProduct record);

    int insertSelective(DdProduct record);

    List<DdProduct> selectByExample(DdProductExample example);

    DdProduct selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") DdProduct record, @Param("example") DdProductExample example);

    int updateByExample(@Param("record") DdProduct record, @Param("example") DdProductExample example);

    int updateByPrimaryKeySelective(DdProduct record);

    int updateByPrimaryKey(DdProduct record);
}