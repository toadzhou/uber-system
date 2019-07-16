package com.roncoo.recharge.web.service;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.CompanyQO;
import com.roncoo.recharge.web.bean.vo.CompanyVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.CompanyDao;
import com.roncoo.recharge.common.entity.Company;
import com.roncoo.recharge.common.entity.CompanyExample;
import com.roncoo.recharge.common.entity.CompanyExample.Criteria;

/**
 *  
 *
 * @author mark
 * @since 2019-07-14
 */
@Component
public class CompanyService {

	@Autowired
	private CompanyDao dao;

	public Page<CompanyVO> listForPage(int pageCurrent, int pageSize, CompanyQO qo) {
	    CompanyExample example = new CompanyExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
	    if(StringUtils.isNotBlank(qo.getName())){
	    	c.andNameLike(PageUtil.like(qo.getName()));
		}
        Page<Company> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, CompanyVO.class);
	}

	public int save(CompanyQO qo) {
	    Company record = new Company();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public CompanyVO getById(Long id) {
	    CompanyVO vo = new CompanyVO();
	    Company record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(CompanyQO qo) {
	    Company record = new Company();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
