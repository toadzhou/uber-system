package com.roncoo.recharge.web.service;

import com.roncoo.recharge.common.dao.CategoryDao;
import com.roncoo.recharge.util.Money;
import com.xiaoleilu.hutool.util.CollectionUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.GoodsQO;
import com.roncoo.recharge.web.bean.vo.GoodsVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.GoodsDao;
import com.roncoo.recharge.common.entity.Goods;
import com.roncoo.recharge.common.entity.GoodsExample;
import com.roncoo.recharge.common.entity.GoodsExample.Criteria;

/**
 * 商品表
 *
 * @author mark
 * @since 2019-03-28
 */
@Component
public class GoodsService {

	@Autowired
	private GoodsDao dao;
	@Autowired
	private CategoryDao categoryDao;

	public Page<GoodsVO> listForPage(int pageCurrent, int pageSize, GoodsQO qo) {
	    GoodsExample example = new GoodsExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
	    if(StringUtils.isNotBlank(qo.getGoodsName())){
	    	c.andGoodsNameEqualTo(qo.getGoodsName());
		}

        Page<Goods> page = dao.listForPage(pageCurrent, pageSize, example);
	    Page<GoodsVO> goodsVOPage = PageUtil.transform(page, GoodsVO.class);
	    if(goodsVOPage != null && CollectionUtil.isNotEmpty(goodsVOPage.getList())){
	    	goodsVOPage.getList().forEach(goodsVO -> {
	    		goodsVO.setMallPrice(Money.ofCent(goodsVO.getPrice()).getYuan());
	    		goodsVO.setCategory1Name(categoryDao.getById(goodsVO.getCategory1Id()).getName());
				goodsVO.setCategory2Name(categoryDao.getById(goodsVO.getCategory2Id()).getName());
				goodsVO.setCategory3Name(categoryDao.getById(goodsVO.getCategory3Id()).getName());

			});
		}

        return goodsVOPage;
	}

	public int save(GoodsQO qo) {
	    Goods record = new Goods();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public GoodsVO getById(Long id) {
	    GoodsVO vo = new GoodsVO();
	    Goods record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(GoodsQO qo) {
	    Goods record = new Goods();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}

}
