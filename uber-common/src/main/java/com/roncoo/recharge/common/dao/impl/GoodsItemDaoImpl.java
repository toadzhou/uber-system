package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.GoodsItemDao;
import com.roncoo.recharge.common.dao.impl.mapper.GoodsItemMapper;
import com.roncoo.recharge.common.entity.GoodsItem;
import com.roncoo.recharge.common.entity.GoodsItemExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsItemDaoImpl implements GoodsItemDao {
    @Autowired
    private GoodsItemMapper goodsItemMapper;

    public int insert(GoodsItem record) {
        return this.goodsItemMapper.insert(record);
    }

    public int save(GoodsItem record) {
        return this.goodsItemMapper.insertSelective(record);
    }

    public int deleteByExample(GoodsItemExample example) {
        return this.goodsItemMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.goodsItemMapper.deleteByPrimaryKey(id);
    }

    public int updateById(GoodsItem record) {
        return this.goodsItemMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(GoodsItem record) {
        return this.goodsItemMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(GoodsItem record, GoodsItemExample example) {
        return this.goodsItemMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(GoodsItem record, GoodsItemExample example) {
        return this.goodsItemMapper.updateByExample(record, example);
    }

    public List<GoodsItem> listByExample(GoodsItemExample example) {
        return this.goodsItemMapper.selectByExample(example);
    }

    public GoodsItem getById(Long id) {
        return this.goodsItemMapper.selectByPrimaryKey(id);
    }

    public int countByExample(GoodsItemExample example) {
        return this.goodsItemMapper.countByExample(example);
    }

    public Page<GoodsItem> listForPage(int pageCurrent, int pageSize, GoodsItemExample example) {
        int count = this.goodsItemMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<GoodsItem>(count, totalPage, pageCurrent, pageSize, this.goodsItemMapper.selectByExample(example));
    }
}