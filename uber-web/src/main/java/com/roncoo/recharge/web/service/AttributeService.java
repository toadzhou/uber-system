package com.roncoo.recharge.web.service;

import com.roncoo.recharge.web.bean.dto.SpecItemDTO;
import com.roncoo.recharge.web.bean.enums.AttrTypeEnum;
import com.roncoo.recharge.web.bean.enums.YesOrNoEnum;
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
	@Autowired
	private GoodsTypeService goodsTypeService;

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
        Long attributeId = dao.save(record);
        //如果是SKU属性,则更新商品类型规格列表
        if(qo.getAttrType().equals(YesOrNoEnum.YES.getCode().byteValue())){
            SpecItemDTO specItemDTO = new SpecItemDTO();
            specItemDTO.setId(attributeId);
            specItemDTO.setName(qo.getAttrName());
            goodsTypeService.updateSpec(qo.getGoodsTypeId(), specItemDTO);
        }
        return 1;
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

	public int updateByCondition(AttributeQO qo){
		Attribute record = new Attribute();
		record.setGoodsTypeId(qo.getGoodsTypeId());
		record.setId(qo.getId());

		AttributeExample example = new AttributeExample();
		AttributeExample.Criteria c = example.createCriteria();
		if(qo.getId() != null){
			c.andIdEqualTo(qo.getId());
		}
		return dao.updateByExampleSelective(record,example);
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
