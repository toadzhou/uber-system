package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.RequestInfoDao;
import com.roncoo.recharge.common.dao.impl.mapper.RequestInfoMapper;
import com.roncoo.recharge.common.entity.RequestInfo;
import com.roncoo.recharge.common.entity.RequestInfoExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RequestInfoDaoImpl implements RequestInfoDao {
    @Autowired
    private RequestInfoMapper requestInfoMapper;

    public int save(RequestInfo record) {
        return this.requestInfoMapper.insertSelective(record);
    }

    public int deleteById(Long id) {
        return this.requestInfoMapper.deleteByPrimaryKey(id);
    }

    public int updateById(RequestInfo record) {
        return this.requestInfoMapper.updateByPrimaryKeySelective(record);
    }

    public List<RequestInfo> listByExample(RequestInfoExample example) {
        return this.requestInfoMapper.selectByExample(example);
    }

    public RequestInfo getById(Long id) {
        return this.requestInfoMapper.selectByPrimaryKey(id);
    }

    public Page<RequestInfo> listForPage(int pageCurrent, int pageSize, RequestInfoExample example) {
        int count = this.requestInfoMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<RequestInfo>(count, totalPage, pageCurrent, pageSize, this.requestInfoMapper.selectByExample(example));
    }
}