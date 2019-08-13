package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.ModuleInfoQO;
import com.roncoo.recharge.web.bean.vo.ModuleInfoVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.ModuleInfoDao;
import com.roncoo.recharge.common.entity.ModuleInfo;
import com.roncoo.recharge.common.entity.ModuleInfoExample;
import com.roncoo.recharge.common.entity.ModuleInfoExample.Criteria;

/**
 * 模块信息 
 *
 * @author mark
 * @since 2019-08-13
 */
@Component
public class ModuleInfoService {

	@Autowired
	private ModuleInfoDao dao;

	public Page<ModuleInfoVO> listForPage(int pageCurrent, int pageSize, ModuleInfoQO qo) {
	    ModuleInfoExample example = new ModuleInfoExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<ModuleInfo> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, ModuleInfoVO.class);
	}

	public int save(ModuleInfoQO qo) {
	    ModuleInfo record = new ModuleInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public ModuleInfoVO getById(Long id) {
	    ModuleInfoVO vo = new ModuleInfoVO();
	    ModuleInfo record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(ModuleInfoQO qo) {
	    ModuleInfo record = new ModuleInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
