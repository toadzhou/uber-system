package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.TemplateImageDao;
import com.roncoo.recharge.common.entity.TemplateImage;
import com.roncoo.recharge.common.entity.TemplateImageExample;
import com.roncoo.recharge.common.mapper.TemplateImageMapper;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TemplateImageDaoImpl implements TemplateImageDao {
    @Autowired
    private TemplateImageMapper templateImageMapper;

    public int insert(TemplateImage record) {
        return this.templateImageMapper.insert(record);
    }

    public int save(TemplateImage record) {
        return this.templateImageMapper.insertSelective(record);
    }

    public int deleteByExample(TemplateImageExample example) {
        return this.templateImageMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.templateImageMapper.deleteByPrimaryKey(id);
    }

    public int updateById(TemplateImage record) {
        return this.templateImageMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(TemplateImage record) {
        return this.templateImageMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(TemplateImage record, TemplateImageExample example) {
        return this.templateImageMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(TemplateImage record, TemplateImageExample example) {
        return this.templateImageMapper.updateByExample(record, example);
    }

    public List<TemplateImage> listByExample(TemplateImageExample example) {
        return this.templateImageMapper.selectByExample(example);
    }

    public TemplateImage getById(Long id) {
        return this.templateImageMapper.selectByPrimaryKey(id);
    }

    public int countByExample(TemplateImageExample example) {
        return this.templateImageMapper.countByExample(example);
    }

    public Page<TemplateImage> listForPage(int pageCurrent, int pageSize, TemplateImageExample example) {
        int count = this.templateImageMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<TemplateImage>(count, totalPage, pageCurrent, pageSize, this.templateImageMapper.selectByExample(example));
    }
}