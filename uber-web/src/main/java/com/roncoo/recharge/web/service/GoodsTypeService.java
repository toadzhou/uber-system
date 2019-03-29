package com.roncoo.recharge.web.service;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Lists;
import com.roncoo.recharge.common.dao.AttributeDao;
import com.roncoo.recharge.common.entity.AttributeExample;
import com.roncoo.recharge.web.bean.dto.AttrGroupDTO;
import com.roncoo.recharge.web.bean.dto.BrandDTO;
import com.roncoo.recharge.web.bean.dto.SpecItemDTO;
import com.xiaoleilu.hutool.util.CollectionUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.GoodsTypeQO;
import com.roncoo.recharge.web.bean.vo.GoodsTypeVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.GoodsTypeDao;
import com.roncoo.recharge.common.entity.GoodsType;
import com.roncoo.recharge.common.entity.GoodsTypeExample;
import com.roncoo.recharge.common.entity.GoodsTypeExample.Criteria;

import java.util.List;
import java.util.stream.Collectors;

/**
 * 商品类型
 *
 * @author mark
 * @since 2019-03-28
 */
@Component
public class GoodsTypeService {

	@Autowired
	private GoodsTypeDao dao;
	@Autowired
	private AttributeDao attributeDao;

	public Page<GoodsTypeVO> listForPage(int pageCurrent, int pageSize, GoodsTypeQO qo) {
	    GoodsTypeExample example = new GoodsTypeExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
	    if(StringUtils.isNotBlank(qo.getName())){
	    	c.andNameEqualTo(qo.getName());
		}
        Page<GoodsType> page = dao.listForPage(pageCurrent, pageSize, example);
	    Page<GoodsTypeVO> goodsTypeVOPage = PageUtil.transform(page, GoodsTypeVO.class);
		if(goodsTypeVOPage != null && CollectionUtil.isNotEmpty(goodsTypeVOPage.getList())){
			goodsTypeVOPage.getList().forEach(goodsTypeVO -> {
				AttributeExample example1 = new AttributeExample();
				AttributeExample.Criteria c1 = example1.createCriteria();
				c1.andGoodsTypeIdEqualTo(goodsTypeVO.getId());
				int count = attributeDao.countByExample(example1);
				goodsTypeVO.setAttributeNumber(count);
				//属性组去除索引文本
				List<AttrGroupDTO> attrGroupDTOList = JSON.parseArray(goodsTypeVO.getAttrGroup(), AttrGroupDTO.class);
				goodsTypeVO.setAttrGroupText(attrGroupDTOList.stream().map(s->s.getDescription()).collect(Collectors.joining(",")));
				//关联品牌显示文本
				if(StringUtils.isNotBlank(goodsTypeVO.getBrandIds())){
					List<BrandDTO> brandDTOList = JSON.parseArray(goodsTypeVO.getBrandIds(), BrandDTO.class);
					goodsTypeVO.setBrandShowText(brandDTOList.stream().map(s->s.getName()).collect(Collectors.joining(",")));
				}
			});
		}
        return goodsTypeVOPage;
	}

	public int save(GoodsTypeQO qo) {
	    GoodsType record = new GoodsType();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public GoodsTypeVO getById(Long id) {
	    GoodsTypeVO vo = new GoodsTypeVO();
	    GoodsType record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(GoodsTypeQO qo) {
	    GoodsType record = new GoodsType();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}

	public int updateByExample(GoodsType goodsType, GoodsTypeQO qo){
		GoodsTypeExample example = new GoodsTypeExample();
		GoodsTypeExample.Criteria c = example.createCriteria();
		if(qo.getId() != null){
			c.andIdEqualTo(qo.getId());
		}
		return dao.updateByExample(goodsType, example);
	}


	public int updateSpec(Long goodsTypeId, SpecItemDTO specItemDTO){
		GoodsTypeVO goodsTypeVO = getById(goodsTypeId);
		if(StringUtils.isBlank(goodsTypeVO.getSpecIds())){
			//为空
			List<SpecItemDTO> specItemDTOS = Lists.newArrayList();
			specItemDTOS.add(specItemDTO);
			goodsTypeVO.setSpecIds(JSON.toJSONString(specItemDTOS));
		}else{
			//不为空
			List<SpecItemDTO> specItemDTOS = JSON.parseArray(goodsTypeVO.getSpecIds(), SpecItemDTO.class);
			specItemDTOS.add(specItemDTO);
			goodsTypeVO.setSpecIds(JSON.toJSONString(specItemDTOS));
		}
		GoodsType goodsType = new GoodsType();
		BeanUtils.copyProperties(goodsTypeVO,goodsType);
		return dao.updateById(goodsType);
	}


}
