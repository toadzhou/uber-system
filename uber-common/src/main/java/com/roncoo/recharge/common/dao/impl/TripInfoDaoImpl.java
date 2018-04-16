package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.TripInfoDao;
import com.roncoo.recharge.common.dao.impl.mapper.TripInfoMapper;
import com.roncoo.recharge.common.entity.TripInfo;
import com.roncoo.recharge.common.entity.TripInfoExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TripInfoDaoImpl implements TripInfoDao {
    @Autowired
    private TripInfoMapper tripInfoMapper;

    public int save(TripInfo record) {
        return this.tripInfoMapper.insertSelective(record);
    }

    public int deleteById(Long id) {
        return this.tripInfoMapper.deleteByPrimaryKey(id);
    }

    public int updateById(TripInfo record) {
        return this.tripInfoMapper.updateByPrimaryKeySelective(record);
    }

    public List<TripInfo> listByExample(TripInfoExample example) {
        return this.tripInfoMapper.selectByExample(example);
    }

    public TripInfo getById(Long id) {
        return this.tripInfoMapper.selectByPrimaryKey(id);
    }

    public Page<TripInfo> listForPage(int pageCurrent, int pageSize, TripInfoExample example) {
        int count = this.tripInfoMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<TripInfo>(count, totalPage, pageCurrent, pageSize, this.tripInfoMapper.selectByExample(example));
    }
}