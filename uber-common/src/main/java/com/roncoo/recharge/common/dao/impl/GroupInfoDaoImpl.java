package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.GroupInfoDao;
import com.roncoo.recharge.common.entity.GroupInfo;
import com.roncoo.recharge.common.entity.GroupInfoExample;
import com.roncoo.recharge.common.mapper.GroupInfoMapper;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GroupInfoDaoImpl implements GroupInfoDao {
    @Autowired
    private GroupInfoMapper groupInfoMapper;

    public int insert(GroupInfo record) {
        return this.groupInfoMapper.insert(record);
    }

    public int save(GroupInfo record) {
        return this.groupInfoMapper.insertSelective(record);
    }

    public int deleteByExample(GroupInfoExample example) {
        return this.groupInfoMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.groupInfoMapper.deleteByPrimaryKey(id);
    }

    public int updateById(GroupInfo record) {
        return this.groupInfoMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(GroupInfo record) {
        return this.groupInfoMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(GroupInfo record, GroupInfoExample example) {
        return this.groupInfoMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(GroupInfo record, GroupInfoExample example) {
        return this.groupInfoMapper.updateByExample(record, example);
    }

    public List<GroupInfo> listByExample(GroupInfoExample example) {
        return this.groupInfoMapper.selectByExample(example);
    }

    public GroupInfo getById(Long id) {
        return this.groupInfoMapper.selectByPrimaryKey(id);
    }

    public int countByExample(GroupInfoExample example) {
        return this.groupInfoMapper.countByExample(example);
    }

    public Page<GroupInfo> listForPage(int pageCurrent, int pageSize, GroupInfoExample example) {
        int count = this.groupInfoMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<GroupInfo>(count, totalPage, pageCurrent, pageSize, this.groupInfoMapper.selectByExample(example));
    }
}