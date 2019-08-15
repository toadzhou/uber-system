package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.TemplatePluginDao;
import com.roncoo.recharge.common.entity.TemplatePlugin;
import com.roncoo.recharge.common.entity.TemplatePluginExample;
import com.roncoo.recharge.common.mapper.TemplatePluginMapper;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TemplatePluginDaoImpl implements TemplatePluginDao {
    @Autowired
    private TemplatePluginMapper templatePluginMapper;

    public int insert(TemplatePlugin record) {
        return this.templatePluginMapper.insert(record);
    }

    public int save(TemplatePlugin record) {
        return this.templatePluginMapper.insertSelective(record);
    }

    public int deleteByExample(TemplatePluginExample example) {
        return this.templatePluginMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.templatePluginMapper.deleteByPrimaryKey(id);
    }

    public int updateById(TemplatePlugin record) {
        return this.templatePluginMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(TemplatePlugin record) {
        return this.templatePluginMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(TemplatePlugin record, TemplatePluginExample example) {
        return this.templatePluginMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(TemplatePlugin record, TemplatePluginExample example) {
        return this.templatePluginMapper.updateByExample(record, example);
    }

    public List<TemplatePlugin> listByExample(TemplatePluginExample example) {
        return this.templatePluginMapper.selectByExample(example);
    }

    public TemplatePlugin getById(Long id) {
        return this.templatePluginMapper.selectByPrimaryKey(id);
    }

    public int countByExample(TemplatePluginExample example) {
        return this.templatePluginMapper.countByExample(example);
    }

    public Page<TemplatePlugin> listForPage(int pageCurrent, int pageSize, TemplatePluginExample example) {
        int count = this.templatePluginMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<TemplatePlugin>(count, totalPage, pageCurrent, pageSize, this.templatePluginMapper.selectByExample(example));
    }
}