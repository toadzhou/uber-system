package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.ProjectInfoQO;
import com.roncoo.recharge.web.bean.vo.ProjectInfoVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.ProjectInfoDao;
import com.roncoo.recharge.common.entity.ProjectInfo;
import com.roncoo.recharge.common.entity.ProjectInfoExample;
import com.roncoo.recharge.common.entity.ProjectInfoExample.Criteria;

/**
 *  
 *
 * @author mark
 * @since 2019-08-13
 */
@Component
public class ProjectInfoService {

	@Autowired
	private ProjectInfoDao dao;

	public Page<ProjectInfoVO> listForPage(int pageCurrent, int pageSize, ProjectInfoQO qo) {
	    ProjectInfoExample example = new ProjectInfoExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<ProjectInfo> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, ProjectInfoVO.class);
	}

	public int save(ProjectInfoQO qo) {
	    ProjectInfo record = new ProjectInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public ProjectInfoVO getById(Long id) {
	    ProjectInfoVO vo = new ProjectInfoVO();
	    ProjectInfo record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(ProjectInfoQO qo) {
	    ProjectInfo record = new ProjectInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
