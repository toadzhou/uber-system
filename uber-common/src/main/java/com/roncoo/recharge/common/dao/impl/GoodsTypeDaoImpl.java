package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.GoodsTypeDao;
import com.roncoo.recharge.common.dao.impl.mapper.GoodsTypeMapper;
import com.roncoo.recharge.common.entity.GoodsType;
import com.roncoo.recharge.common.entity.GoodsTypeExample;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsTypeDaoImpl implements GoodsTypeDao {
    @Autowired
    private GoodsTypeMapper goodsTypeMapper;

    public int insert(GoodsType record) {
        return this.goodsTypeMapper.insert(record);
    }

    public int save(GoodsType record) {
        return this.goodsTypeMapper.insertSelective(record);
    }

    public int deleteByExample(GoodsTypeExample example) {
        return this.goodsTypeMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.goodsTypeMapper.deleteByPrimaryKey(id);
    }

    public int updateById(GoodsType record) {
        return this.goodsTypeMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(GoodsType record) {
        return this.goodsTypeMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(GoodsType record, GoodsTypeExample example) {
        return this.goodsTypeMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(GoodsType record, GoodsTypeExample example) {
        return this.goodsTypeMapper.updateByExample(record, example);
    }

    public List<GoodsType> listByExample(GoodsTypeExample example) {
        return this.goodsTypeMapper.selectByExample(example);
    }

    public GoodsType getById(Long id) {
        return this.goodsTypeMapper.selectByPrimaryKey(id);
    }

    public int countByExample(GoodsTypeExample example) {
        return this.goodsTypeMapper.countByExample(example);
    }

    public Page<GoodsType> listForPage(int pageCurrent, int pageSize, GoodsTypeExample example) {
        int count = this.goodsTypeMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<GoodsType>(count, totalPage, pageCurrent, pageSize, this.goodsTypeMapper.selectByExample(example));
    }
}