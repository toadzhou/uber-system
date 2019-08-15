package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.TemplatePluginQO;
import com.roncoo.recharge.web.bean.vo.TemplatePluginVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.TemplatePluginDao;
import com.roncoo.recharge.common.entity.TemplatePlugin;
import com.roncoo.recharge.common.entity.TemplatePluginExample;
import com.roncoo.recharge.common.entity.TemplatePluginExample.Criteria;

/**
 * 模版插件关联表 
 *
 * @author mark
 * @since 2019-08-15
 */
@Component
public class TemplatePluginService {

	@Autowired
	private TemplatePluginDao dao;

	public Page<TemplatePluginVO> listForPage(int pageCurrent, int pageSize, TemplatePluginQO qo) {
	    TemplatePluginExample example = new TemplatePluginExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<TemplatePlugin> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, TemplatePluginVO.class);
	}

	public int save(TemplatePluginQO qo) {
	    TemplatePlugin record = new TemplatePlugin();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public TemplatePluginVO getById(Long id) {
	    TemplatePluginVO vo = new TemplatePluginVO();
	    TemplatePlugin record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(TemplatePluginQO qo) {
	    TemplatePlugin record = new TemplatePlugin();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
