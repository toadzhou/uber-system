package com.roncoo.recharge.common.dao.impl.mapper;

import com.roncoo.recharge.common.entity.RequestInfo;
import com.roncoo.recharge.common.entity.RequestInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface RequestInfoMapper {
    int countByExample(RequestInfoExample example);

    int deleteByExample(RequestInfoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(RequestInfo record);

    int insertSelective(RequestInfo record);

    List<RequestInfo> selectByExample(RequestInfoExample example);

    RequestInfo selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") RequestInfo record, @Param("example") RequestInfoExample example);

    int updateByExample(@Param("record") RequestInfo record, @Param("example") RequestInfoExample example);

    int updateByPrimaryKeySelective(RequestInfo record);

    int updateByPrimaryKey(RequestInfo record);
}