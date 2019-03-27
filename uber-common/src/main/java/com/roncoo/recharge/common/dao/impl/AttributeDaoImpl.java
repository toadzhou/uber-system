package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.AttributeDao;
import com.roncoo.recharge.common.dao.impl.mapper.AttributeMapper;
import com.roncoo.recharge.common.entity.Attribute;
import com.roncoo.recharge.common.entity.AttributeExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AttributeDaoImpl implements AttributeDao {
    @Autowired
    private AttributeMapper attributeMapper;

    public int insert(Attribute record) {
        return this.attributeMapper.insert(record);
    }

    public int save(Attribute record) {
        return this.attributeMapper.insertSelective(record);
    }

    public int deleteByExample(AttributeExample example) {
        return this.attributeMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.attributeMapper.deleteByPrimaryKey(id);
    }

    public int updateById(Attribute record) {
        return this.attributeMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Attribute record) {
        return this.attributeMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(Attribute record, AttributeExample example) {
        return this.attributeMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(Attribute record, AttributeExample example) {
        return this.attributeMapper.updateByExample(record, example);
    }

    public List<Attribute> listByExample(AttributeExample example) {
        return this.attributeMapper.selectByExample(example);
    }

    public Attribute getById(Long id) {
        return this.attributeMapper.selectByPrimaryKey(id);
    }

    public int countByExample(AttributeExample example) {
        return this.attributeMapper.countByExample(example);
    }

    public Page<Attribute> listForPage(int pageCurrent, int pageSize, AttributeExample example) {
        int count = this.attributeMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<Attribute>(count, totalPage, pageCurrent, pageSize, this.attributeMapper.selectByExample(example));
    }
}