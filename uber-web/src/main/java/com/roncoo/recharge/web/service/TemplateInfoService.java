package com.roncoo.recharge.web.service;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.TemplateInfoQO;
import com.roncoo.recharge.web.bean.vo.TemplateInfoVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.TemplateInfoDao;
import com.roncoo.recharge.common.entity.TemplateInfo;
import com.roncoo.recharge.common.entity.TemplateInfoExample;
import com.roncoo.recharge.common.entity.TemplateInfoExample.Criteria;

/**
 * 模板信息  
 *
 * @author mark
 * @since 2019-07-16
 */
@Component
public class TemplateInfoService {

	@Autowired
	private TemplateInfoDao dao;

	public Page<TemplateInfoVO> listForPage(int pageCurrent, int pageSize, TemplateInfoQO qo) {
	    TemplateInfoExample example = new TemplateInfoExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
	    if(StringUtils.isNotBlank(qo.getName())){
	    	c.andNameLike(PageUtil.like(qo.getName()));
		}
        Page<TemplateInfo> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, TemplateInfoVO.class);
	}

	public int save(TemplateInfoQO qo) {
	    TemplateInfo record = new TemplateInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public TemplateInfoVO getById(Long id) {
	    TemplateInfoVO vo = new TemplateInfoVO();
	    TemplateInfo record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(TemplateInfoQO qo) {
	    TemplateInfo record = new TemplateInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
