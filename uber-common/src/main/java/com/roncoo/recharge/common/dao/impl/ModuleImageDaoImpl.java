package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.ModuleImageDao;
import com.roncoo.recharge.common.entity.ModuleImage;
import com.roncoo.recharge.common.entity.ModuleImageExample;
import com.roncoo.recharge.common.mapper.ModuleImageMapper;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ModuleImageDaoImpl implements ModuleImageDao {
    @Autowired
    private ModuleImageMapper moduleImageMapper;

    public int insert(ModuleImage record) {
        return this.moduleImageMapper.insert(record);
    }

    public int save(ModuleImage record) {
        return this.moduleImageMapper.insertSelective(record);
    }

    public int deleteByExample(ModuleImageExample example) {
        return this.moduleImageMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.moduleImageMapper.deleteByPrimaryKey(id);
    }

    public int updateById(ModuleImage record) {
        return this.moduleImageMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(ModuleImage record) {
        return this.moduleImageMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(ModuleImage record, ModuleImageExample example) {
        return this.moduleImageMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(ModuleImage record, ModuleImageExample example) {
        return this.moduleImageMapper.updateByExample(record, example);
    }

    public List<ModuleImage> listByExample(ModuleImageExample example) {
        return this.moduleImageMapper.selectByExample(example);
    }

    public ModuleImage getById(Long id) {
        return this.moduleImageMapper.selectByPrimaryKey(id);
    }

    public int countByExample(ModuleImageExample example) {
        return this.moduleImageMapper.countByExample(example);
    }

    public Page<ModuleImage> listForPage(int pageCurrent, int pageSize, ModuleImageExample example) {
        int count = this.moduleImageMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<ModuleImage>(count, totalPage, pageCurrent, pageSize, this.moduleImageMapper.selectByExample(example));
    }
}