package com.roncoo.recharge.common.dao.impl.mapper;

import com.roncoo.recharge.common.entity.Driver;
import com.roncoo.recharge.common.entity.DriverExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface DriverMapper {
    int countByExample(DriverExample example);

    int deleteByExample(DriverExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Driver record);

    int insertSelective(Driver record);

    List<Driver> selectByExample(DriverExample example);

    Driver selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Driver record, @Param("example") DriverExample example);

    int updateByExample(@Param("record") Driver record, @Param("example") DriverExample example);

    int updateByPrimaryKeySelective(Driver record);

    int updateByPrimaryKey(Driver record);
}