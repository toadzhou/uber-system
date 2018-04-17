package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.RequestInfoQO;
import com.roncoo.recharge.web.bean.vo.RequestInfoVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.RequestInfoDao;
import com.roncoo.recharge.common.entity.RequestInfo;
import com.roncoo.recharge.common.entity.RequestInfoExample;
import com.roncoo.recharge.common.entity.RequestInfoExample.Criteria;

/**
 * 打车请求信息 
 *
 * @author mark
 * @since 2018-04-16
 */
@Component
public class RequestInfoService {

	@Autowired
	private RequestInfoDao dao;

	public Page<RequestInfoVO> listForPage(int pageCurrent, int pageSize, RequestInfoQO qo) {
	    RequestInfoExample example = new RequestInfoExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<RequestInfo> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, RequestInfoVO.class);
	}

	public int save(RequestInfoQO qo) {
	    RequestInfo record = new RequestInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public RequestInfoVO getById(Long id) {
	    RequestInfoVO vo = new RequestInfoVO();
	    RequestInfo record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(RequestInfoQO qo) {
	    RequestInfo record = new RequestInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}


	
}
