package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.ModuleInfoDao;
import com.roncoo.recharge.common.entity.ModuleInfo;
import com.roncoo.recharge.common.entity.ModuleInfoExample;
import com.roncoo.recharge.common.mapper.ModuleInfoMapper;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ModuleInfoDaoImpl implements ModuleInfoDao {
    @Autowired
    private ModuleInfoMapper moduleInfoMapper;

    public int insert(ModuleInfo record) {
        return this.moduleInfoMapper.insert(record);
    }

    public int save(ModuleInfo record) {
        return this.moduleInfoMapper.insertSelective(record);
    }

    public int deleteByExample(ModuleInfoExample example) {
        return this.moduleInfoMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.moduleInfoMapper.deleteByPrimaryKey(id);
    }

    public int updateById(ModuleInfo record) {
        return this.moduleInfoMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(ModuleInfo record) {
        return this.moduleInfoMapper.updateByPrimaryKeyWithoutBLOBs(record);
    }

    public int updateByExampleSelective(ModuleInfo record, ModuleInfoExample example) {
        return this.moduleInfoMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(ModuleInfo record, ModuleInfoExample example) {
        return this.moduleInfoMapper.updateByExampleWithoutBLOBs(record, example);
    }

    public List<ModuleInfo> listByExample(ModuleInfoExample example) {
        return this.moduleInfoMapper.selectByExampleWithoutBLOBs(example);
    }

    public ModuleInfo getById(Long id) {
        return this.moduleInfoMapper.selectByPrimaryKey(id);
    }

    public int countByExample(ModuleInfoExample example) {
        return this.moduleInfoMapper.countByExample(example);
    }

    public Page<ModuleInfo> listForPage(int pageCurrent, int pageSize, ModuleInfoExample example) {
        int count = this.moduleInfoMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<ModuleInfo>(count, totalPage, pageCurrent, pageSize, this.moduleInfoMapper.selectByExample(example));
    }
}