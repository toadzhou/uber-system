package com.roncoo.recharge.common.dao.impl.mapper;

import com.roncoo.recharge.common.entity.TripInfo;
import com.roncoo.recharge.common.entity.TripInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface TripInfoMapper {
    int countByExample(TripInfoExample example);

    int deleteByExample(TripInfoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TripInfo record);

    int insertSelective(TripInfo record);

    List<TripInfo> selectByExample(TripInfoExample example);

    TripInfo selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TripInfo record, @Param("example") TripInfoExample example);

    int updateByExample(@Param("record") TripInfo record, @Param("example") TripInfoExample example);

    int updateByPrimaryKeySelective(TripInfo record);

    int updateByPrimaryKey(TripInfo record);
}