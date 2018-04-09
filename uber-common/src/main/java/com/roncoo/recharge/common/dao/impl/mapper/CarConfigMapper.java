package com.roncoo.recharge.common.dao.impl.mapper;

import com.roncoo.recharge.common.entity.CarConfig;
import com.roncoo.recharge.common.entity.CarConfigExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface CarConfigMapper {
    int countByExample(CarConfigExample example);

    int deleteByExample(CarConfigExample example);

    int deleteByPrimaryKey(Long id);

    int insert(CarConfig record);

    int insertSelective(CarConfig record);

    List<CarConfig> selectByExample(CarConfigExample example);

    CarConfig selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") CarConfig record, @Param("example") CarConfigExample example);

    int updateByExample(@Param("record") CarConfig record, @Param("example") CarConfigExample example);

    int updateByPrimaryKeySelective(CarConfig record);

    int updateByPrimaryKey(CarConfig record);
}