package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.PluginInfoQO;
import com.roncoo.recharge.web.bean.vo.PluginInfoVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.PluginInfoDao;
import com.roncoo.recharge.common.entity.PluginInfo;
import com.roncoo.recharge.common.entity.PluginInfoExample;
import com.roncoo.recharge.common.entity.PluginInfoExample.Criteria;

/**
 * 插件(此处商品) 
 *
 * @author mark
 * @since 2019-08-13
 */
@Component
public class PluginInfoService {

	@Autowired
	private PluginInfoDao dao;

	public Page<PluginInfoVO> listForPage(int pageCurrent, int pageSize, PluginInfoQO qo) {
	    PluginInfoExample example = new PluginInfoExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<PluginInfo> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, PluginInfoVO.class);
	}

	public int save(PluginInfoQO qo) {
	    PluginInfo record = new PluginInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public PluginInfoVO getById(Long id) {
	    PluginInfoVO vo = new PluginInfoVO();
	    PluginInfo record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(PluginInfoQO qo) {
	    PluginInfo record = new PluginInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
