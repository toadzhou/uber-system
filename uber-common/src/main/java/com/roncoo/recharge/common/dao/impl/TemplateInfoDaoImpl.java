package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.TemplateInfoDao;
import com.roncoo.recharge.common.entity.TemplateInfo;
import com.roncoo.recharge.common.entity.TemplateInfoExample;
import com.roncoo.recharge.common.mapper.TemplateInfoMapper;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TemplateInfoDaoImpl implements TemplateInfoDao {
    @Autowired
    private TemplateInfoMapper templateInfoMapper;

    public int insert(TemplateInfo record) {
        return this.templateInfoMapper.insert(record);
    }

    public int save(TemplateInfo record) {
        return this.templateInfoMapper.insertSelective(record);
    }

    public int deleteByExample(TemplateInfoExample example) {
        return this.templateInfoMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.templateInfoMapper.deleteByPrimaryKey(id);
    }

    public int updateById(TemplateInfo record) {
        return this.templateInfoMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(TemplateInfo record) {
        return this.templateInfoMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(TemplateInfo record, TemplateInfoExample example) {
        return this.templateInfoMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(TemplateInfo record, TemplateInfoExample example) {
        return this.templateInfoMapper.updateByExample(record, example);
    }

    public List<TemplateInfo> listByExample(TemplateInfoExample example) {
        return this.templateInfoMapper.selectByExample(example);
    }

    public TemplateInfo getById(Long id) {
        return this.templateInfoMapper.selectByPrimaryKey(id);
    }

    public int countByExample(TemplateInfoExample example) {
        return this.templateInfoMapper.countByExample(example);
    }

    public Page<TemplateInfo> listForPage(int pageCurrent, int pageSize, TemplateInfoExample example) {
        int count = this.templateInfoMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<TemplateInfo>(count, totalPage, pageCurrent, pageSize, this.templateInfoMapper.selectByExample(example));
    }
}