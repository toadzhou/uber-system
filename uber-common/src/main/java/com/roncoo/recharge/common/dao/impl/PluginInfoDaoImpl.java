package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.PluginInfoDao;
import com.roncoo.recharge.common.entity.PluginInfo;
import com.roncoo.recharge.common.entity.PluginInfoExample;
import com.roncoo.recharge.common.mapper.PluginInfoMapper;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PluginInfoDaoImpl implements PluginInfoDao {
    @Autowired
    private PluginInfoMapper pluginInfoMapper;

    public int insert(PluginInfo record) {
        return this.pluginInfoMapper.insert(record);
    }

    public int save(PluginInfo record) {
        return this.pluginInfoMapper.insertSelective(record);
    }

    public int deleteByExample(PluginInfoExample example) {
        return this.pluginInfoMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.pluginInfoMapper.deleteByPrimaryKey(id);
    }

    public int updateById(PluginInfo record) {
        return this.pluginInfoMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(PluginInfo record) {
        return this.pluginInfoMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(PluginInfo record, PluginInfoExample example) {
        return this.pluginInfoMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(PluginInfo record, PluginInfoExample example) {
        return this.pluginInfoMapper.updateByExample(record, example);
    }

    public List<PluginInfo> listByExample(PluginInfoExample example) {
        return this.pluginInfoMapper.selectByExample(example);
    }

    public PluginInfo getById(Long id) {
        return this.pluginInfoMapper.selectByPrimaryKey(id);
    }

    public int countByExample(PluginInfoExample example) {
        return this.pluginInfoMapper.countByExample(example);
    }

    public Page<PluginInfo> listForPage(int pageCurrent, int pageSize, PluginInfoExample example) {
        int count = this.pluginInfoMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<PluginInfo>(count, totalPage, pageCurrent, pageSize, this.pluginInfoMapper.selectByExample(example));
    }
}