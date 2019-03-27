package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.Attribute;
import com.roncoo.recharge.common.entity.AttributeExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface AttributeDao {
    int insert(Attribute record);

    int save(Attribute record);

    int deleteByExample(AttributeExample example);

    int deleteById(Long id);

    int updateById(Attribute record);

    int updateByPrimaryKey(Attribute record);

    int updateByExampleSelective(Attribute record, AttributeExample example);

    int updateByExample(Attribute record, AttributeExample example);

    Attribute getById(Long id);

    List<Attribute> listByExample(AttributeExample example);

    int countByExample(AttributeExample example);

    Page<Attribute> listForPage(int pageCurrent, int pageSize, AttributeExample example);
}