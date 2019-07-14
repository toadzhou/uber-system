package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.ProjectInfoDao;
import com.roncoo.recharge.common.entity.ProjectInfo;
import com.roncoo.recharge.common.entity.ProjectInfoExample;
import com.roncoo.recharge.common.mapper.ProjectInfoMapper;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProjectInfoDaoImpl implements ProjectInfoDao {
    @Autowired
    private ProjectInfoMapper projectInfoMapper;

    public int insert(ProjectInfo record) {
        return this.projectInfoMapper.insert(record);
    }

    public int save(ProjectInfo record) {
        return this.projectInfoMapper.insertSelective(record);
    }

    public int deleteByExample(ProjectInfoExample example) {
        return this.projectInfoMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.projectInfoMapper.deleteByPrimaryKey(id);
    }

    public int updateById(ProjectInfo record) {
        return this.projectInfoMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(ProjectInfo record) {
        return this.projectInfoMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(ProjectInfo record, ProjectInfoExample example) {
        return this.projectInfoMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(ProjectInfo record, ProjectInfoExample example) {
        return this.projectInfoMapper.updateByExample(record, example);
    }

    public List<ProjectInfo> listByExample(ProjectInfoExample example) {
        return this.projectInfoMapper.selectByExample(example);
    }

    public ProjectInfo getById(Long id) {
        return this.projectInfoMapper.selectByPrimaryKey(id);
    }

    public int countByExample(ProjectInfoExample example) {
        return this.projectInfoMapper.countByExample(example);
    }

    public Page<ProjectInfo> listForPage(int pageCurrent, int pageSize, ProjectInfoExample example) {
        int count = this.projectInfoMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<ProjectInfo>(count, totalPage, pageCurrent, pageSize, this.projectInfoMapper.selectByExample(example));
    }
}