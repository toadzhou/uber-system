package com.roncoo.recharge.web.service;

import com.roncoo.recharge.common.dao.GoodsTypeDao;
import com.roncoo.recharge.common.entity.GoodsType;
import com.xiaoleilu.hutool.util.CollectionUtil;
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

import java.util.List;

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
	@Autowired
	private GoodsTypeDao goodsTypeDao;

	public Page<CategoryVO> listForPage(int pageCurrent, int pageSize, CategoryQO qo) {
	    CategoryExample example = new CategoryExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc, sort desc ");
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
	    Page<CategoryVO> categoryVOPage = PageUtil.transform(page, CategoryVO.class);
	    if(categoryVOPage != null && CollectionUtil.isNotEmpty(categoryVOPage.getList())){
			categoryVOPage.getList().forEach(categoryVO -> {
				if(categoryVO.getGoodsTypeId()!= null){
					categoryVO.setGoodsTypeText(goodsTypeDao.getById(categoryVO.getId()).getName());
				}
			});
		}
        return categoryVOPage;
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

	public List<Category> queryForList(CategoryQO qo){
		CategoryExample example = new CategoryExample();
		example.setOrderByClause("sort desc");
		CategoryExample.Criteria c = example.createCriteria();
		if(qo.getParentId() != null){
			c.andParentIdEqualTo(qo.getParentId());
		}
		if(qo.getIsLeaf() != null){
			c.andIsLeafEqualTo(qo.getIsLeaf());
		}
		return dao.listByExample(example);
	}

	public  int updateByCondition(CategoryQO qo){
		Category category = new Category();
		category.setGoodsTypeId(qo.getGoodsTypeId());
		category.setId(qo.getId());
		CategoryExample example = new CategoryExample();
		CategoryExample.Criteria c = example.createCriteria();
		if(qo.getId() != null){
			c.andIdEqualTo(qo.getId());
		}
		return dao.updateByExampleSelective(category, example);
	}

}
