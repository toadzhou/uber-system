package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.DriverCarQO;
import com.roncoo.recharge.web.bean.vo.DriverCarVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.DriverCarDao;
import com.roncoo.recharge.common.entity.DriverCar;
import com.roncoo.recharge.common.entity.DriverCarExample;
import com.roncoo.recharge.common.entity.DriverCarExample.Criteria;

/**
 * 司机车辆 
 *
 * @author mark
 * @since 2018-04-12
 */
@Component
public class DriverCarService {

	@Autowired
	private DriverCarDao dao;

	public Page<DriverCarVO> listForPage(int pageCurrent, int pageSize, DriverCarQO qo) {
	    DriverCarExample example = new DriverCarExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<DriverCar> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, DriverCarVO.class);
	}

	public int save(DriverCarQO qo) {
	    DriverCar record = new DriverCar();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public DriverCarVO getById(Long id) {
	    DriverCarVO vo = new DriverCarVO();
	    DriverCar record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(DriverCarQO qo) {
	    DriverCar record = new DriverCar();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
