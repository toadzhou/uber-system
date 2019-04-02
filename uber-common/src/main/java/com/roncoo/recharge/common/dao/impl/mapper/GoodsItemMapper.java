package com.roncoo.recharge.common.dao.impl.mapper;

import com.roncoo.recharge.common.entity.GoodsItem;
import com.roncoo.recharge.common.entity.GoodsItemExample;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface GoodsItemMapper {
    int countByExample(GoodsItemExample example);

    int deleteByExample(GoodsItemExample example);

    int deleteByPrimaryKey(Long id);

    int insert(GoodsItem record);

    int insertSelective(GoodsItem record);

    List<GoodsItem> selectByExample(GoodsItemExample example);

    GoodsItem selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") GoodsItem record, @Param("example") GoodsItemExample example);

    int updateByExample(@Param("record") GoodsItem record, @Param("example") GoodsItemExample example);

    int updateByPrimaryKeySelective(GoodsItem record);

    int updateByPrimaryKey(GoodsItem record);
}