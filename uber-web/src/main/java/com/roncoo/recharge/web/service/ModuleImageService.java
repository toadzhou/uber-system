package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.ModuleImageQO;
import com.roncoo.recharge.web.bean.vo.ModuleImageVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.ModuleImageDao;
import com.roncoo.recharge.common.entity.ModuleImage;
import com.roncoo.recharge.common.entity.ModuleImageExample;
import com.roncoo.recharge.common.entity.ModuleImageExample.Criteria;

/**
 * 模块图片 
 *
 * @author mark
 * @since 2019-08-13
 */
@Component
public class ModuleImageService {

	@Autowired
	private ModuleImageDao dao;

	public Page<ModuleImageVO> listForPage(int pageCurrent, int pageSize, ModuleImageQO qo) {
	    ModuleImageExample example = new ModuleImageExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<ModuleImage> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, ModuleImageVO.class);
	}

	public int save(ModuleImageQO qo) {
	    ModuleImage record = new ModuleImage();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public ModuleImageVO getById(Long id) {
	    ModuleImageVO vo = new ModuleImageVO();
	    ModuleImage record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(ModuleImageQO qo) {
	    ModuleImage record = new ModuleImage();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
