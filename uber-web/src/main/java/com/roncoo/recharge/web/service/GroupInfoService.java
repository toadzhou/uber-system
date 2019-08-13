package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.GroupInfoQO;
import com.roncoo.recharge.web.bean.vo.GroupInfoVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.GroupInfoDao;
import com.roncoo.recharge.common.entity.GroupInfo;
import com.roncoo.recharge.common.entity.GroupInfoExample;
import com.roncoo.recharge.common.entity.GroupInfoExample.Criteria;

/**
 * 组件信息 
 *
 * @author mark
 * @since 2019-08-13
 */
@Component
public class GroupInfoService {

	@Autowired
	private GroupInfoDao dao;

	public Page<GroupInfoVO> listForPage(int pageCurrent, int pageSize, GroupInfoQO qo) {
	    GroupInfoExample example = new GroupInfoExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<GroupInfo> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, GroupInfoVO.class);
	}

	public int save(GroupInfoQO qo) {
	    GroupInfo record = new GroupInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public GroupInfoVO getById(Long id) {
	    GroupInfoVO vo = new GroupInfoVO();
	    GroupInfo record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(GroupInfoQO qo) {
	    GroupInfo record = new GroupInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
