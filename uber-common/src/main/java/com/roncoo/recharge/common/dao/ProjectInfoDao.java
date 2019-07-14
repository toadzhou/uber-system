package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.ProjectInfo;
import com.roncoo.recharge.common.entity.ProjectInfoExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface ProjectInfoDao {
    int insert(ProjectInfo record);

    int save(ProjectInfo record);

    int deleteByExample(ProjectInfoExample example);

    int deleteById(Long id);

    int updateById(ProjectInfo record);

    int updateByPrimaryKey(ProjectInfo record);

    int updateByExampleSelective(ProjectInfo record, ProjectInfoExample example);

    int updateByExample(ProjectInfo record, ProjectInfoExample example);

    ProjectInfo getById(Long id);

    List<ProjectInfo> listByExample(ProjectInfoExample example);

    int countByExample(ProjectInfoExample example);

    Page<ProjectInfo> listForPage(int pageCurrent, int pageSize, ProjectInfoExample example);
}