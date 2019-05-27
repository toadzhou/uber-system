package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.GoodsComment;
import com.roncoo.recharge.common.entity.GoodsCommentExample;
import com.roncoo.recharge.util.bjui.Page;

import java.util.List;

public interface GoodsCommentDao {
    int insert(GoodsComment record);

    int save(GoodsComment record);

    int deleteByExample(GoodsCommentExample example);

    int deleteById(Long id);

    int updateById(GoodsComment record);

    int updateByPrimaryKey(GoodsComment record);

    int updateByExampleSelective(GoodsComment record, GoodsCommentExample example);

    int updateByExample(GoodsComment record, GoodsCommentExample example);

    GoodsComment getById(Long id);

    List<GoodsComment> listByExample(GoodsCommentExample example);

    int countByExample(GoodsCommentExample example);

    Page<GoodsComment> listForPage(int pageCurrent, int pageSize, GoodsCommentExample example);
}