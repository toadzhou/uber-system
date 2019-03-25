package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.Category;
import com.roncoo.recharge.common.entity.CategoryExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface CategoryDao {
    int insert(Category record);

    int save(Category record);

    int deleteByExample(CategoryExample example);

    int deleteById(Long id);

    int updateById(Category record);

    int updateByPrimaryKey(Category record);

    int updateByExampleSelective(Category record, CategoryExample example);

    int updateByExample(Category record, CategoryExample example);

    Category getById(Long id);

    List<Category> listByExample(CategoryExample example);

    int countByExample(CategoryExample example);

    Page<Category> listForPage(int pageCurrent, int pageSize, CategoryExample example);
}