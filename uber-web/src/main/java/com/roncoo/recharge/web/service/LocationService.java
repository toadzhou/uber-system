package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.LocationQO;
import com.roncoo.recharge.web.bean.vo.LocationVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.LocationDao;
import com.roncoo.recharge.common.entity.Location;
import com.roncoo.recharge.common.entity.LocationExample;
import com.roncoo.recharge.common.entity.LocationExample.Criteria;

/**
 * 地理信息表 
 *
 * @author mark
 * @since 2018-04-12
 */
@Component
public class LocationService {

	@Autowired
	private LocationDao dao;

	public Page<LocationVO> listForPage(int pageCurrent, int pageSize, LocationQO qo) {
	    LocationExample example = new LocationExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<Location> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, LocationVO.class);
	}

	public Long save(LocationQO qo) {
	    Location record = new Location();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public LocationVO getById(Long id) {
	    LocationVO vo = new LocationVO();
	    Location record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(LocationQO qo) {
	    Location record = new Location();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
