package com.roncoo.recharge.common.dao.impl.mapper;

import com.roncoo.recharge.common.entity.Location;
import com.roncoo.recharge.common.entity.LocationExample;
import java.util.List;

import com.roncoo.recharge.common.model.MatchModel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface LocationMapper {
    int countByExample(LocationExample example);

    int deleteByExample(LocationExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Location record);

    int insertSelective(Location record);

    List<Location> selectByExample(LocationExample example);

    Location selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Location record, @Param("example") LocationExample example);

    int updateByExample(@Param("record") Location record, @Param("example") LocationExample example);

    int updateByPrimaryKeySelective(Location record);

    int updateByPrimaryKey(Location record);

    List<MatchModel> queryByGeoHash(@Param("geoHash") String geoHash);

}