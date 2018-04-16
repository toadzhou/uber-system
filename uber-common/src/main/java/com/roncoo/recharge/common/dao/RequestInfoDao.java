package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.RequestInfo;
import com.roncoo.recharge.common.entity.RequestInfoExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface RequestInfoDao {
    int save(RequestInfo record);

    int deleteById(Long id);

    int updateById(RequestInfo record);

    RequestInfo getById(Long id);

    List<RequestInfo> listByExample(RequestInfoExample example);

    Page<RequestInfo> listForPage(int pageCurrent, int pageSize, RequestInfoExample example);
}