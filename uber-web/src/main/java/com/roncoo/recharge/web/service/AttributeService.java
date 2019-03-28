package com.roncoo.recharge.web.service;

import com.roncoo.recharge.web.bean.enums.AttrTypeEnum;
import com.xiaoleilu.hutool.util.CollectionUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.AttributeQO;
import com.roncoo.recharge.web.bean.vo.AttributeVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.AttributeDao;
import com.roncoo.recharge.common.entity.Attribute;
import com.roncoo.recharge.common.entity.AttributeExample;
import com.roncoo.recharge.common.entity.AttributeExample.Criteria;

import java.util.List;

/**
 * 属性表
 *
 * @author mark
 * @since 2019-03-27
 */
@Component
public class AttributeService {

	@Autowired
	private AttributeDao dao;

	public Page<AttributeVO> listForPage(int pageCurrent, int pageSize, AttributeQO qo) {
	    AttributeExample example = new AttributeExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause("sort_order desc, id desc ");
	    if(qo.getGoodsTypeId() != null){
	    	c.andGoodsTypeIdEqualTo(qo.getGoodsTypeId());
		}

        Page<Attribute> page = dao.listForPage(pageCurrent, pageSize, example);
		Page<AttributeVO> attributeVOPage =  PageUtil.transform(page, AttributeVO.class);

	    if(attributeVOPage != null && CollectionUtil.isNotEmpty(attributeVOPage.getList())){
			attributeVOPage.getList().forEach(attribute -> {
	    		attribute.setAttrTypeText(AttrTypeEnum.getText(attribute.getAttrInputType()));
			});
		}
        return attributeVOPage;
	}

	public int save(AttributeQO qo) {
	    Attribute record = new Attribute();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public AttributeVO getById(Long id) {
	    AttributeVO vo = new AttributeVO();
	    Attribute record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(AttributeQO qo) {
	    Attribute record = new Attribute();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}

	public List<Attribute> queryForList(AttributeQO qo){
		AttributeExample example = new AttributeExample();
		Criteria c = example.createCriteria();
		example.setOrderByClause("sort_order desc, id desc ");
		if(qo.getGoodsTypeId() != null){
			c.andGoodsTypeIdEqualTo(qo.getGoodsTypeId());
		}
		return dao.listByExample(example);
	}

}
