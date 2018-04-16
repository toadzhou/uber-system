package com.roncoo.recharge.common.dao.impl.mapper;

import com.roncoo.recharge.common.entity.Passenger;
import com.roncoo.recharge.common.entity.PassengerExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface PassengerMapper {
    int countByExample(PassengerExample example);

    int deleteByExample(PassengerExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Passenger record);

    int insertSelective(Passenger record);

    List<Passenger> selectByExample(PassengerExample example);

    Passenger selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Passenger record, @Param("example") PassengerExample example);

    int updateByExample(@Param("record") Passenger record, @Param("example") PassengerExample example);

    int updateByPrimaryKeySelective(Passenger record);

    int updateByPrimaryKey(Passenger record);
}