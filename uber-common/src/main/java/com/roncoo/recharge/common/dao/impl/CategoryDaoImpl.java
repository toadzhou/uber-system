package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.CategoryDao;
import com.roncoo.recharge.common.dao.impl.mapper.CategoryMapper;
import com.roncoo.recharge.common.entity.Category;
import com.roncoo.recharge.common.entity.CategoryExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDaoImpl implements CategoryDao {
    @Autowired
    private CategoryMapper categoryMapper;

    public int insert(Category record) {
        return this.categoryMapper.insert(record);
    }

    public int save(Category record) {
        return this.categoryMapper.insertSelective(record);
    }

    public int deleteByExample(CategoryExample example) {
        return this.categoryMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.categoryMapper.deleteByPrimaryKey(id);
    }

    public int updateById(Category record) {
        return this.categoryMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Category record) {
        return this.categoryMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(Category record, CategoryExample example) {
        return this.categoryMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(Category record, CategoryExample example) {
        return this.categoryMapper.updateByExample(record, example);
    }

    public List<Category> listByExample(CategoryExample example) {
        return this.categoryMapper.selectByExample(example);
    }

    public Category getById(Long id) {
        return this.categoryMapper.selectByPrimaryKey(id);
    }

    public int countByExample(CategoryExample example) {
        return this.categoryMapper.countByExample(example);
    }

    public Page<Category> listForPage(int pageCurrent, int pageSize, CategoryExample example) {
        int count = this.categoryMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<Category>(count, totalPage, pageCurrent, pageSize, this.categoryMapper.selectByExample(example));
    }
}