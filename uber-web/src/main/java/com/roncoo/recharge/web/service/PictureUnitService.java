package com.roncoo.recharge.web.service;

import com.roncoo.recharge.web.bean.enums.YesOrNoEnum;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.PictureUnitQO;
import com.roncoo.recharge.web.bean.vo.PictureUnitVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.PictureUnitDao;
import com.roncoo.recharge.common.entity.PictureUnit;
import com.roncoo.recharge.common.entity.PictureUnitExample;
import com.roncoo.recharge.common.entity.PictureUnitExample.Criteria;

/**
 *  
 *
 * @author mark
 * @since 2019-07-14
 */
@Component
public class PictureUnitService {

	@Autowired
	private PictureUnitDao dao;

	public Page<PictureUnitVO> listForPage(int pageCurrent, int pageSize, PictureUnitQO qo) {
	    PictureUnitExample example = new PictureUnitExample();
	    Criteria c = example.createCriteria();
	    if(StringUtils.isNotBlank(qo.getName())){
	    	c.andNameLike(PageUtil.like(qo.getName()));
		}
	    example.setOrderByClause(" id desc ");
        Page<PictureUnit> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, PictureUnitVO.class);
	}

	public int save(PictureUnitQO qo) {
	    PictureUnit record = new PictureUnit();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public PictureUnitVO getById(Long id) {
	    PictureUnitVO vo = new PictureUnitVO();
	    PictureUnit record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(PictureUnitQO qo) {
	    PictureUnit record = new PictureUnit();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
