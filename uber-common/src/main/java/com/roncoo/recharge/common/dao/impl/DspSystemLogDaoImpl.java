package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.DspSystemLogDao;
import com.roncoo.recharge.common.dao.impl.mapper.DspSystemLogMapper;
import com.roncoo.recharge.common.entity.DspSystemLog;
import com.roncoo.recharge.common.entity.DspSystemLogExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DspSystemLogDaoImpl implements DspSystemLogDao {
    @Autowired
    private DspSystemLogMapper dspSystemLogMapper;

    public int insert(DspSystemLog record) {
        return this.dspSystemLogMapper.insert(record);
    }

    public int save(DspSystemLog record) {
        return this.dspSystemLogMapper.insertSelective(record);
    }

    public int deleteByExample(DspSystemLogExample example) {
        return this.dspSystemLogMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.dspSystemLogMapper.deleteByPrimaryKey(id);
    }

    public int updateById(DspSystemLog record) {
        return this.dspSystemLogMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(DspSystemLog record) {
        return this.dspSystemLogMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(DspSystemLog record, DspSystemLogExample example) {
        return this.dspSystemLogMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(DspSystemLog record, DspSystemLogExample example) {
        return this.dspSystemLogMapper.updateByExample(record, example);
    }

    public List<DspSystemLog> listByExample(DspSystemLogExample example) {
        return this.dspSystemLogMapper.selectByExample(example);
    }

    public DspSystemLog getById(Long id) {
        return this.dspSystemLogMapper.selectByPrimaryKey(id);
    }

    public int countByExample(DspSystemLogExample example) {
        return this.dspSystemLogMapper.countByExample(example);
    }

    public Page<DspSystemLog> listForPage(int pageCurrent, int pageSize, DspSystemLogExample example) {
        int count = this.dspSystemLogMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<DspSystemLog>(count, totalPage, pageCurrent, pageSize, this.dspSystemLogMapper.selectByExample(example));
    }
}