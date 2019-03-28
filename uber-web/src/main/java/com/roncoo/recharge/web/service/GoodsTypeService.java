package com.roncoo.recharge.web.service;

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

}
