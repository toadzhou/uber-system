package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.GoodsDao;
import com.roncoo.recharge.common.dao.impl.mapper.GoodsMapper;
import com.roncoo.recharge.common.entity.Goods;
import com.roncoo.recharge.common.entity.GoodsExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsDaoImpl implements GoodsDao {
    @Autowired
    private GoodsMapper goodsMapper;

    public int insert(Goods record) {
        return this.goodsMapper.insert(record);
    }

    public int save(Goods record) {
        return this.goodsMapper.insertSelective(record);
    }

    public int deleteByExample(GoodsExample example) {
        return this.goodsMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.goodsMapper.deleteByPrimaryKey(id);
    }

    public int updateById(Goods record) {
        return this.goodsMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Goods record) {
        return this.goodsMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(Goods record, GoodsExample example) {
        return this.goodsMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(Goods record, GoodsExample example) {
        return this.goodsMapper.updateByExample(record, example);
    }

    public List<Goods> listByExample(GoodsExample example) {
        return this.goodsMapper.selectByExample(example);
    }

    public Goods getById(Long id) {
        return this.goodsMapper.selectByPrimaryKey(id);
    }

    public int countByExample(GoodsExample example) {
        return this.goodsMapper.countByExample(example);
    }

    public Page<Goods> listForPage(int pageCurrent, int pageSize, GoodsExample example) {
        int count = this.goodsMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<Goods>(count, totalPage, pageCurrent, pageSize, this.goodsMapper.selectByExample(example));
    }
}