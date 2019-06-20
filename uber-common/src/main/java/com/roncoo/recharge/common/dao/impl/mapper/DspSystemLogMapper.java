package com.roncoo.recharge.common.dao.impl.mapper;

import com.roncoo.recharge.common.entity.DspSystemLog;
import com.roncoo.recharge.common.entity.DspSystemLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface DspSystemLogMapper {
    int countByExample(DspSystemLogExample example);

    int deleteByExample(DspSystemLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(DspSystemLog record);

    int insertSelective(DspSystemLog record);

    List<DspSystemLog> selectByExample(DspSystemLogExample example);

    DspSystemLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") DspSystemLog record, @Param("example") DspSystemLogExample example);

    int updateByExample(@Param("record") DspSystemLog record, @Param("example") DspSystemLogExample example);

    int updateByPrimaryKeySelective(DspSystemLog record);

    int updateByPrimaryKey(DspSystemLog record);
}