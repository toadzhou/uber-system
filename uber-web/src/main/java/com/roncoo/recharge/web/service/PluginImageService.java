package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.PluginImageQO;
import com.roncoo.recharge.web.bean.vo.PluginImageVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.PluginImageDao;
import com.roncoo.recharge.common.entity.PluginImage;
import com.roncoo.recharge.common.entity.PluginImageExample;
import com.roncoo.recharge.common.entity.PluginImageExample.Criteria;

import java.util.List;

/**
 *  
 *
 * @author mark
 * @since 2019-08-13
 */
@Component
public class PluginImageService {

	@Autowired
	private PluginImageDao dao;

	public Page<PluginImageVO> listForPage(int pageCurrent, int pageSize, PluginImageQO qo) {
	    PluginImageExample example = new PluginImageExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<PluginImage> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, PluginImageVO.class);
	}

	public int save(PluginImageQO qo) {
	    PluginImage record = new PluginImage();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public PluginImageVO getById(Long id) {
	    PluginImageVO vo = new PluginImageVO();
	    PluginImage record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(PluginImageQO qo) {
	    PluginImage record = new PluginImage();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}

	public List<PluginImage> queryForList(PluginImageQO qo){
	  PluginImageExample example = 	generate(qo);
	  return dao.listByExample(example);
	}

	public PluginImageExample generate(PluginImageQO qo){
		PluginImageExample example = new PluginImageExample();
		example.setOrderByClause("id desc");
		PluginImageExample.Criteria c = example.createCriteria();
		if(qo.getId() != null){
			c.andIdEqualTo(qo.getId());
		}
		return example;

	}


	
}
