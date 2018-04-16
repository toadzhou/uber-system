package com.roncoo.recharge.web.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roncoo.recharge.web.bean.qo.TripInfoQO;
import com.roncoo.recharge.web.bean.vo.TripInfoVO;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import com.roncoo.recharge.common.dao.TripInfoDao;
import com.roncoo.recharge.common.entity.TripInfo;
import com.roncoo.recharge.common.entity.TripInfoExample;
import com.roncoo.recharge.common.entity.TripInfoExample.Criteria;

/**
 * 打车行程 
 *
 * @author mark
 * @since 2018-04-16
 */
@Component
public class TripInfoService {

	@Autowired
	private TripInfoDao dao;

	public Page<TripInfoVO> listForPage(int pageCurrent, int pageSize, TripInfoQO qo) {
	    TripInfoExample example = new TripInfoExample();
	    Criteria c = example.createCriteria();
	    example.setOrderByClause(" id desc ");
        Page<TripInfo> page = dao.listForPage(pageCurrent, pageSize, example);
        return PageUtil.transform(page, TripInfoVO.class);
	}

	public int save(TripInfoQO qo) {
	    TripInfo record = new TripInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.save(record);
	}

	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	public TripInfoVO getById(Long id) {
	    TripInfoVO vo = new TripInfoVO();
	    TripInfo record = dao.getById(id);
        BeanUtils.copyProperties(record, vo);
		return vo;
	}

	public int updateById(TripInfoQO qo) {
	    TripInfo record = new TripInfo();
        BeanUtils.copyProperties(qo, record);
		return dao.updateById(record);
	}
	
}
