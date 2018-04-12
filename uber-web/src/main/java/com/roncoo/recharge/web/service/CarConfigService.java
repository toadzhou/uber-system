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

import java.util.List;
import java.util.stream.Collectors;

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
        Page<CarConfig> page = null;
	    CarConfigExample example = new CarConfigExample();
	    Criteria c = example.createCriteria();
	    if(qo.getDepth() == null){
	    	c.andParentIdEqualTo(0).andDepthEqualTo(new Byte("1"));
            example.setOrderByClause(" id desc ");
            page = dao.listForPage(pageCurrent, pageSize, example);
		}else{
			//品牌查询
			if(qo.getDepth()!= null && qo.getDepth() == 1){
				if(StringUtils.isNotBlank(qo.getName())){
					c.andNameLike(qo.getName()).andParentIdEqualTo(0).andDepthEqualTo(new Byte("1"));
				}
				if(StringUtils.isNotBlank(qo.getInitial())){
					c.andInitialEqualTo(qo.getInitial()).andParentIdEqualTo(0).andDepthEqualTo(new Byte("1"));
				}
                example.setOrderByClause(" id desc ");
                page = dao.listForPage(pageCurrent, pageSize, example);
			}
			//车型查询
			if(qo.getDepth()!= null && qo.getDepth() == 3 && qo.getParentId() != null){
				//先查品牌子公司,默认奥迪
                List<CarConfig> carConfigList = queryByParentIdAndDepth(1,2);
                if(!carConfigList.isEmpty()) {
                    List<Integer> parentIds = carConfigList.stream().map(carConfig -> carConfig.getSonId()).collect(Collectors.toList());
                    //查询全部车型
                    c.andParentIdIn(parentIds).andDepthEqualTo(new Byte("3"));
                    if (StringUtils.isNotBlank(qo.getName())) {
                        c.andNameLike(qo.getName());
                    }
                }
                example.setOrderByClause(" id desc ");
                page = dao.listForPage(pageCurrent, pageSize, example);
			}
		}
        return PageUtil.transform(page, CarConfigVO.class);
	}

	public List<CarConfig> queryByParentIdAndDepth(Integer parentId, Integer depth){
        CarConfigExample carConfigExample = new CarConfigExample();
        carConfigExample.createCriteria().andParentIdEqualTo(parentId).andDepthEqualTo(depth.byteValue());
        return dao.listByExample(carConfigExample);
    }

	public int save(CarConfigQO qo) {
	    CarConfig record = new CarConfig();
        BeanUtils.copyProperties(qo, record);
        record.setDepth(qo.getDepth().byteValue());
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
