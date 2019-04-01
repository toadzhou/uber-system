package com.roncoo.recharge.common.dao.impl.mapper;

import com.roncoo.recharge.common.entity.AttributeOption;
import com.roncoo.recharge.common.entity.AttributeOptionExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface AttributeOptionMapper {
    int countByExample(AttributeOptionExample example);

    int deleteByExample(AttributeOptionExample example);

    int deleteByPrimaryKey(Long id);

    int insert(AttributeOption record);

    int insertSelective(AttributeOption record);

    List<AttributeOption> selectByExample(AttributeOptionExample example);

    AttributeOption selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") AttributeOption record, @Param("example") AttributeOptionExample example);

    int updateByExample(@Param("record") AttributeOption record, @Param("example") AttributeOptionExample example);

    int updateByPrimaryKeySelective(AttributeOption record);

    int updateByPrimaryKey(AttributeOption record);
}