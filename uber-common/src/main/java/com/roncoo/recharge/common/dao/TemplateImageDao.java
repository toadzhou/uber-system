package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.TemplateImage;
import com.roncoo.recharge.common.entity.TemplateImageExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface TemplateImageDao {
    int insert(TemplateImage record);

    int save(TemplateImage record);

    int deleteByExample(TemplateImageExample example);

    int deleteById(Long id);

    int updateById(TemplateImage record);

    int updateByPrimaryKey(TemplateImage record);

    int updateByExampleSelective(TemplateImage record, TemplateImageExample example);

    int updateByExample(TemplateImage record, TemplateImageExample example);

    TemplateImage getById(Long id);

    List<TemplateImage> listByExample(TemplateImageExample example);

    int countByExample(TemplateImageExample example);

    Page<TemplateImage> listForPage(int pageCurrent, int pageSize, TemplateImageExample example);
}