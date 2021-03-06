package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.TemplateImageQO;
import com.roncoo.recharge.web.bean.vo.TemplateImageVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.TemplateImageDao;
import com.roncoo.recharge.common.entity.TemplateImage;
import com.roncoo.recharge.common.entity.TemplateImageExample;
import com.roncoo.recharge.common.entity.TemplateImageExample.Criteria;

/**
 *  
 *
 * @author mark
 * @since 2019-08-13
 */
@Component
public class TemplateImageService {

	@Autowired
	private TemplateImageDao dao;

	public Page<TemplateImageVO> listForPage(int pageCurrent, int pageSize, TemplateImageQO qo) {
	    TemplateImageExample example = new TemplateImageExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<TemplateImage> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, TemplateImageVO.class);
	}

	public int save(TemplateImageQO qo) {
	    TemplateImage record = new TemplateImage();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public TemplateImageVO getById(Long id) {
	    TemplateImageVO vo = new TemplateImageVO();
	    TemplateImage record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(TemplateImageQO qo) {
	    TemplateImage record = new TemplateImage();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
