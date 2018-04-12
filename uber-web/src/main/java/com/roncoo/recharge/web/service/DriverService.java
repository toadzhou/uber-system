package com.roncoo.recharge.web.service;

import com.roncoo.recharge.common.dao.CarConfigDao;
import com.roncoo.recharge.common.dao.DriverCarDao;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.DriverQO;
import com.roncoo.recharge.web.bean.vo.DriverVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.DriverDao;
import com.roncoo.recharge.common.entity.Driver;
import com.roncoo.recharge.common.entity.DriverExample;
import com.roncoo.recharge.common.entity.DriverExample.Criteria;

/**
 * 司机基础信息 
 *
 * @author mark
 * @since 2018-04-12
 */
@Component
public class DriverService {

	@Autowired
	private DriverDao dao;
	@Autowired
	private DriverCarDao driverCarDao;
	@Autowired
	private CarConfigDao carConfigDao;

	public Page<DriverVO> listForPage(int pageCurrent, int pageSize, DriverQO qo) {
	    DriverExample example = new DriverExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<Driver> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, DriverVO.class);
	}



	public int save(DriverQO qo) {
	    Driver record = new Driver();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public DriverVO getById(Long id) {
	    DriverVO vo = new DriverVO();
	    Driver record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(DriverQO qo) {
	    Driver record = new Driver();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
