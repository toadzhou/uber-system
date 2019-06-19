package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.GoodsCommentDao;
import com.roncoo.recharge.common.dao.impl.mapper.GoodsCommentMapper;
import com.roncoo.recharge.common.entity.GoodsComment;
import com.roncoo.recharge.common.entity.GoodsCommentExample;

import java.util.List;

import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsCommentDaoImpl implements GoodsCommentDao {
    @Autowired
    private GoodsCommentMapper goodsCommentMapper;

    public int insert(GoodsComment record) {
        return this.goodsCommentMapper.insert(record);
    }

    public int save(GoodsComment record) {
        return this.goodsCommentMapper.insertSelective(record);
    }

    public int deleteByExample(GoodsCommentExample example) {
        return this.goodsCommentMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.goodsCommentMapper.deleteByPrimaryKey(id);
    }

    public int updateById(GoodsComment record) {
        return this.goodsCommentMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(GoodsComment record) {
        return this.goodsCommentMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(GoodsComment record, GoodsCommentExample example) {
        return this.goodsCommentMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(GoodsComment record, GoodsCommentExample example) {
        return this.goodsCommentMapper.updateByExample(record, example);
    }

    public List<GoodsComment> listByExample(GoodsCommentExample example) {
        return this.goodsCommentMapper.selectByExample(example);
    }

    public GoodsComment getById(Long id) {
        return this.goodsCommentMapper.selectByPrimaryKey(id);
    }

    public int countByExample(GoodsCommentExample example) {
        return this.goodsCommentMapper.countByExample(example);
    }

    public Page<GoodsComment> listForPage(int pageCurrent, int pageSize, GoodsCommentExample example) {
        int count = this.goodsCommentMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<GoodsComment>(count, totalPage, pageCurrent, pageSize, this.goodsCommentMapper.selectByExample(example));
    }
}