package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.PassengerQO;
import com.roncoo.recharge.web.bean.vo.PassengerVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.PassengerDao;
import com.roncoo.recharge.common.entity.Passenger;
import com.roncoo.recharge.common.entity.PassengerExample;
import com.roncoo.recharge.common.entity.PassengerExample.Criteria;

/**
 * 乘客表 
 *
 * @author mark
 * @since 2018-04-16
 */
@Component
public class PassengerService {

	@Autowired
	private PassengerDao dao;

	public Page<PassengerVO> listForPage(int pageCurrent, int pageSize, PassengerQO qo) {
	    PassengerExample example = new PassengerExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<Passenger> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, PassengerVO.class);
	}

	public int save(PassengerQO qo) {
	    Passenger record = new Passenger();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public PassengerVO getById(Long id) {
	    PassengerVO vo = new PassengerVO();
	    Passenger record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(PassengerQO qo) {
	    Passenger record = new Passenger();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
