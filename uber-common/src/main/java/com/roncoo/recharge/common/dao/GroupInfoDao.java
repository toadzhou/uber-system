package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.GroupInfo;
import com.roncoo.recharge.common.entity.GroupInfoExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface GroupInfoDao {
    int insert(GroupInfo record);

    int save(GroupInfo record);

    int deleteByExample(GroupInfoExample example);

    int deleteById(Long id);

    int updateById(GroupInfo record);

    int updateByPrimaryKey(GroupInfo record);

    int updateByExampleSelective(GroupInfo record, GroupInfoExample example);

    int updateByExample(GroupInfo record, GroupInfoExample example);

    GroupInfo getById(Long id);

    List<GroupInfo> listByExample(GroupInfoExample example);

    int countByExample(GroupInfoExample example);

    Page<GroupInfo> listForPage(int pageCurrent, int pageSize, GroupInfoExample example);
}