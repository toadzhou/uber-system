package com.roncoo.recharge.web.service;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.GoodsItemQO;
import com.roncoo.recharge.web.bean.vo.GoodsItemVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.GoodsItemDao;
import com.roncoo.recharge.common.entity.GoodsItem;
import com.roncoo.recharge.common.entity.GoodsItemExample;
import com.roncoo.recharge.common.entity.GoodsItemExample.Criteria;

/**
 * SKU商品项目表(最小库存单位)
 *
 * @author mark
 * @since 2019-04-02
 */
@Component
public class GoodsItemService {

	@Autowired
	private GoodsItemDao dao;

	public Page<GoodsItemVO> listForPage(int pageCurrent, int pageSize, GoodsItemQO qo) {
	    GoodsItemExample example = new GoodsItemExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
	    if(StringUtils.isNotBlank(qo.getTitle())){
	    	c.andTitleLike(PageUtil.like(qo.getTitle()));
		}

        Page<GoodsItem> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, GoodsItemVO.class);
	}

	public int save(GoodsItemQO qo) {
	    GoodsItem record = new GoodsItem();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public GoodsItemVO getById(Long id) {
	    GoodsItemVO vo = new GoodsItemVO();
	    GoodsItem record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(GoodsItemQO qo) {
	    GoodsItem record = new GoodsItem();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}

}
