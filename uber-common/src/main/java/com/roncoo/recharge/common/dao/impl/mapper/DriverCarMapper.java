package com.roncoo.recharge.common.dao.impl.mapper;

import com.roncoo.recharge.common.entity.DriverCar;
import com.roncoo.recharge.common.entity.DriverCarExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface DriverCarMapper {
    int countByExample(DriverCarExample example);

    int deleteByExample(DriverCarExample example);

    int deleteByPrimaryKey(Long id);

    int insert(DriverCar record);

    int insertSelective(DriverCar record);

    List<DriverCar> selectByExample(DriverCarExample example);

    DriverCar selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") DriverCar record, @Param("example") DriverCarExample example);

    int updateByExample(@Param("record") DriverCar record, @Param("example") DriverCarExample example);

    int updateByPrimaryKeySelective(DriverCar record);

    int updateByPrimaryKey(DriverCar record);
}