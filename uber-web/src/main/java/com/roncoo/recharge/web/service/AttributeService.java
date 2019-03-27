package com.roncoo.recharge.web.service;

import com.roncoo.recharge.web.bean.enums.AttrTypeEnum;
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
	    example.setOrderByClause(" id desc ");
	    if(qo.getCategoryId() != null){
	    	c.andCategoryIdEqualTo(qo.getCategoryId());
		}

        Page<Attribute> page = dao.listForPage(pageCurrent, pageSize, example);
		Page<AttributeVO> attributeVOPage =  PageUtil.transform(page, AttributeVO.class);

	    if(attributeVOPage != null && !attributeVOPage.getList().isEmpty()){
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

}
