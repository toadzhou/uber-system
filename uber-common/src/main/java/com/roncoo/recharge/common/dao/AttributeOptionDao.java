package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.AttributeOption;
import com.roncoo.recharge.common.entity.AttributeOptionExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface AttributeOptionDao {
    int insert(AttributeOption record);

    int save(AttributeOption record);

    int deleteByExample(AttributeOptionExample example);

    int deleteById(Long id);

    int updateById(AttributeOption record);

    int updateByPrimaryKey(AttributeOption record);

    int updateByExampleSelective(AttributeOption record, AttributeOptionExample example);

    int updateByExample(AttributeOption record, AttributeOptionExample example);

    AttributeOption getById(Long id);

    List<AttributeOption> listByExample(AttributeOptionExample example);

    int countByExample(AttributeOptionExample example);

    Page<AttributeOption> listForPage(int pageCurrent, int pageSize, AttributeOptionExample example);
}