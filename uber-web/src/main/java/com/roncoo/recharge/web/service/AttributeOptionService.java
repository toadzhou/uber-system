package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.AttributeOptionQO;
import com.roncoo.recharge.web.bean.vo.AttributeOptionVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.AttributeOptionDao;
import com.roncoo.recharge.common.entity.AttributeOption;
import com.roncoo.recharge.common.entity.AttributeOptionExample;
import com.roncoo.recharge.common.entity.AttributeOptionExample.Criteria;

/**
 * 属性选项值 
 *
 * @author mark
 * @since 2019-04-01
 */
@Component
public class AttributeOptionService {

	@Autowired
	private AttributeOptionDao dao;

	public Page<AttributeOptionVO> listForPage(int pageCurrent, int pageSize, AttributeOptionQO qo) {
	    AttributeOptionExample example = new AttributeOptionExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<AttributeOption> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, AttributeOptionVO.class);
	}

	public int save(AttributeOptionQO qo) {
	    AttributeOption record = new AttributeOption();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public AttributeOptionVO getById(Long id) {
	    AttributeOptionVO vo = new AttributeOptionVO();
	    AttributeOption record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(AttributeOptionQO qo) {
	    AttributeOption record = new AttributeOption();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
