package com.roncoo.recharge.web.service;

import com.xiaoleilu.hutool.util.ObjectUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.DdProductQO;
import com.roncoo.recharge.web.bean.vo.DdProductVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.DdProductDao;
import com.roncoo.recharge.common.entity.DdProduct;
import com.roncoo.recharge.common.entity.DdProductExample;
import com.roncoo.recharge.common.entity.DdProductExample.Criteria;

/**
 * 借款产品表 
 *
 * @author mark
 * @since 2018-04-02
 */
@Component
public class DdProductService {

	@Autowired
	private DdProductDao dao;

	public Page<DdProductVO> listForPage(int pageCurrent, int pageSize, DdProductQO qo) {
	    DdProductExample example = new DdProductExample();
	    Criteria c = example.createCriteria();
		if (ObjectUtil.isNotNull(qo.getProductCode())) {
			c.andProductCodeEqualTo(qo.getProductCode());
		}
	    example.setOrderByClause(" id desc ");
        Page<DdProduct> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, DdProductVO.class);
	}

	public int save(DdProductQO qo) {
	    DdProduct record = new DdProduct();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public DdProductVO getById(Long id) {
	    DdProductVO vo = new DdProductVO();
	    DdProduct record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(DdProductQO qo) {
	    DdProduct record = new DdProduct();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
