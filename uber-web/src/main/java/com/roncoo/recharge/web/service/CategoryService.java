package com.roncoo.recharge.web.service;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.CategoryQO;
import com.roncoo.recharge.web.bean.vo.CategoryVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.CategoryDao;
import com.roncoo.recharge.common.entity.Category;
import com.roncoo.recharge.common.entity.CategoryExample;
import com.roncoo.recharge.common.entity.CategoryExample.Criteria;

/**
 * 分类信息
 *
 * @author mark
 * @since 2019-03-25
 */
@Component
public class CategoryService {

	@Autowired
	private CategoryDao dao;

	public Page<CategoryVO> listForPage(int pageCurrent, int pageSize, CategoryQO qo) {
	    CategoryExample example = new CategoryExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
	    if(StringUtils.isNotBlank(qo.getName())){
	    	c.andNameLike(PageUtil.like(qo.getName()));
		}
	    if(qo.getParentId() != null){
	    	c.andParentIdEqualTo(qo.getParentId());
		}
	    if(qo.getIsLeaf() != null){
	    	c.andIsLeafEqualTo(qo.getIsLeaf());
		}
        Page<Category> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, CategoryVO.class);
	}

	public int save(CategoryQO qo) {
	    Category record = new Category();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public CategoryVO getById(Long id) {
	    CategoryVO vo = new CategoryVO();
	    Category record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(CategoryQO qo) {
	    Category record = new Category();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}

}
