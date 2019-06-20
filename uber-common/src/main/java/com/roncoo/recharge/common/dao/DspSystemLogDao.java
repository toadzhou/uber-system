package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.DspSystemLog;
import com.roncoo.recharge.common.entity.DspSystemLogExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface DspSystemLogDao {
    int insert(DspSystemLog record);

    int save(DspSystemLog record);

    int deleteByExample(DspSystemLogExample example);

    int deleteById(Long id);

    int updateById(DspSystemLog record);

    int updateByPrimaryKey(DspSystemLog record);

    int updateByExampleSelective(DspSystemLog record, DspSystemLogExample example);

    int updateByExample(DspSystemLog record, DspSystemLogExample example);

    DspSystemLog getById(Long id);

    List<DspSystemLog> listByExample(DspSystemLogExample example);

    int countByExample(DspSystemLogExample example);

    Page<DspSystemLog> listForPage(int pageCurrent, int pageSize, DspSystemLogExample example);
}