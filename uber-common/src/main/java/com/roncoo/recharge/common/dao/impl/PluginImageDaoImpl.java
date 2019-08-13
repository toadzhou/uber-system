package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.PluginImageDao;
import com.roncoo.recharge.common.entity.PluginImage;
import com.roncoo.recharge.common.entity.PluginImageExample;
import com.roncoo.recharge.common.mapper.PluginImageMapper;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PluginImageDaoImpl implements PluginImageDao {
    @Autowired
    private PluginImageMapper pluginImageMapper;

    public int insert(PluginImage record) {
        return this.pluginImageMapper.insert(record);
    }

    public int save(PluginImage record) {
        return this.pluginImageMapper.insertSelective(record);
    }

    public int deleteByExample(PluginImageExample example) {
        return this.pluginImageMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.pluginImageMapper.deleteByPrimaryKey(id);
    }

    public int updateById(PluginImage record) {
        return this.pluginImageMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(PluginImage record) {
        return this.pluginImageMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(PluginImage record, PluginImageExample example) {
        return this.pluginImageMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(PluginImage record, PluginImageExample example) {
        return this.pluginImageMapper.updateByExample(record, example);
    }

    public List<PluginImage> listByExample(PluginImageExample example) {
        return this.pluginImageMapper.selectByExample(example);
    }

    public PluginImage getById(Long id) {
        return this.pluginImageMapper.selectByPrimaryKey(id);
    }

    public int countByExample(PluginImageExample example) {
        return this.pluginImageMapper.countByExample(example);
    }

    public Page<PluginImage> listForPage(int pageCurrent, int pageSize, PluginImageExample example) {
        int count = this.pluginImageMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<PluginImage>(count, totalPage, pageCurrent, pageSize, this.pluginImageMapper.selectByExample(example));
    }
}