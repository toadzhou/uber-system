package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.AttributeOptionDao;
import com.roncoo.recharge.common.dao.impl.mapper.AttributeOptionMapper;
import com.roncoo.recharge.common.entity.AttributeOption;
import com.roncoo.recharge.common.entity.AttributeOptionExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AttributeOptionDaoImpl implements AttributeOptionDao {
    @Autowired
    private AttributeOptionMapper attributeOptionMapper;

    public int insert(AttributeOption record) {
        return this.attributeOptionMapper.insert(record);
    }

    public int save(AttributeOption record) {
        return this.attributeOptionMapper.insertSelective(record);
    }

    public int deleteByExample(AttributeOptionExample example) {
        return this.attributeOptionMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.attributeOptionMapper.deleteByPrimaryKey(id);
    }

    public int updateById(AttributeOption record) {
        return this.attributeOptionMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(AttributeOption record) {
        return this.attributeOptionMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(AttributeOption record, AttributeOptionExample example) {
        return this.attributeOptionMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(AttributeOption record, AttributeOptionExample example) {
        return this.attributeOptionMapper.updateByExample(record, example);
    }

    public List<AttributeOption> listByExample(AttributeOptionExample example) {
        return this.attributeOptionMapper.selectByExample(example);
    }

    public AttributeOption getById(Long id) {
        return this.attributeOptionMapper.selectByPrimaryKey(id);
    }

    public int countByExample(AttributeOptionExample example) {
        return this.attributeOptionMapper.countByExample(example);
    }

    public Page<AttributeOption> listForPage(int pageCurrent, int pageSize, AttributeOptionExample example) {
        int count = this.attributeOptionMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<AttributeOption>(count, totalPage, pageCurrent, pageSize, this.attributeOptionMapper.selectByExample(example));
    }
}