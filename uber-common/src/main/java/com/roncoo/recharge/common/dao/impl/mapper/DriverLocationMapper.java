package com.roncoo.recharge.common.dao.impl.mapper;

import com.roncoo.recharge.common.entity.DriverLocation;
import com.roncoo.recharge.common.entity.DriverLocationExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface DriverLocationMapper {
    int countByExample(DriverLocationExample example);

    int deleteByExample(DriverLocationExample example);

    int deleteByPrimaryKey(Long id);

    int insert(DriverLocation record);

    int insertSelective(DriverLocation record);

    List<DriverLocation> selectByExample(DriverLocationExample example);

    DriverLocation selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") DriverLocation record, @Param("example") DriverLocationExample example);

    int updateByExample(@Param("record") DriverLocation record, @Param("example") DriverLocationExample example);

    int updateByPrimaryKeySelective(DriverLocation record);

    int updateByPrimaryKey(DriverLocation record);
}