package com.roncoo.recharge.web.service;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.CarConfigQO;
import com.roncoo.recharge.web.bean.vo.CarConfigVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.CarConfigDao;
import com.roncoo.recharge.common.entity.CarConfig;
import com.roncoo.recharge.common.entity.CarConfigExample;
import com.roncoo.recharge.common.entity.CarConfigExample.Criteria;

/**
 * 车型基础数据 
 *
 * @author mark
 * @since 2018-04-10
 */
@Component
public class CarConfigService {

	@Autowired
	private CarConfigDao dao;

	public Page<CarConfigVO> listForPage(int pageCurrent, int pageSize, CarConfigQO qo) {
	    CarConfigExample example = new CarConfigExample();
	    Criteria c = example.createCriteria();
	    if(StringUtils.isNotBlank(qo.getName())){
			c.andNameLike(qo.getName()).andParentIdEqualTo(0);
		}
		if(StringUtils.isNotBlank(qo.getInitial())){
			c.andInitialEqualTo(qo.getInitial()).andParentIdEqualTo(0);
		}
	    example.setOrderByClause(" id desc ");
        Page<CarConfig> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, CarConfigVO.class);
	}

	public int save(CarConfigQO qo) {
	    CarConfig record = new CarConfig();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public CarConfigVO getById(Long id) {
	    CarConfigVO vo = new CarConfigVO();
	    CarConfig record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(CarConfigQO qo) {
	    CarConfig record = new CarConfig();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
