package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.DriverLocationQO;
import com.roncoo.recharge.web.bean.vo.DriverLocationVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.DriverLocationDao;
import com.roncoo.recharge.common.entity.DriverLocation;
import com.roncoo.recharge.common.entity.DriverLocationExample;
import com.roncoo.recharge.common.entity.DriverLocationExample.Criteria;

import java.util.List;

/**
 * 司机位置 
 *
 * @author mark
 * @since 2018-04-12
 */
@Component
public class DriverLocationService {

	@Autowired
	private DriverLocationDao dao;

	public Page<DriverLocationVO> listForPage(int pageCurrent, int pageSize, DriverLocationQO qo) {
	    DriverLocationExample example = new DriverLocationExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<DriverLocation> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, DriverLocationVO.class);
	}

	public int save(DriverLocationQO qo) {
	    DriverLocation record = new DriverLocation();
        BeanUtils.copyProperties(qo, record);
        record.setStatus(qo.getStatus().byteValue());
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public DriverLocationVO getById(Long id) {
	    DriverLocationVO vo = new DriverLocationVO();
	    DriverLocation record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(DriverLocationQO qo) {
	    DriverLocation record = new DriverLocation();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}

	public List<DriverLocation> queryForList(Long driverId){
		DriverLocationExample driverLocationExample = new DriverLocationExample();
		driverLocationExample.createCriteria().andDriverIdEqualTo(driverId);
		return dao.listByExample(driverLocationExample);
	}
	
}
