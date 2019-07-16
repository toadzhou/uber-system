package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.TemplateInfo;
import com.roncoo.recharge.common.entity.TemplateInfoExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface TemplateInfoDao {
    int insert(TemplateInfo record);

    int save(TemplateInfo record);

    int deleteByExample(TemplateInfoExample example);

    int deleteById(Long id);

    int updateById(TemplateInfo record);

    int updateByPrimaryKey(TemplateInfo record);

    int updateByExampleSelective(TemplateInfo record, TemplateInfoExample example);

    int updateByExample(TemplateInfo record, TemplateInfoExample example);

    TemplateInfo getById(Long id);

    List<TemplateInfo> listByExample(TemplateInfoExample example);

    int countByExample(TemplateInfoExample example);

    Page<TemplateInfo> listForPage(int pageCurrent, int pageSize, TemplateInfoExample example);
}