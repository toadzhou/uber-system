package com.roncoo.recharge.common.dao.impl;

import com.roncoo.recharge.common.dao.PictureUnitDao;
import com.roncoo.recharge.common.entity.PictureUnit;
import com.roncoo.recharge.common.entity.PictureUnitExample;
import com.roncoo.recharge.common.mapper.PictureUnitMapper;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.util.bjui.PageUtil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PictureUnitDaoImpl implements PictureUnitDao {
    @Autowired
    private PictureUnitMapper pictureUnitMapper;

    public int insert(PictureUnit record) {
        return this.pictureUnitMapper.insert(record);
    }

    public int save(PictureUnit record) {
        return this.pictureUnitMapper.insertSelective(record);
    }

    public int deleteByExample(PictureUnitExample example) {
        return this.pictureUnitMapper.deleteByExample(example);
    }

    public int deleteById(Long id) {
        return this.pictureUnitMapper.deleteByPrimaryKey(id);
    }

    public int updateById(PictureUnit record) {
        return this.pictureUnitMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(PictureUnit record) {
        return this.pictureUnitMapper.updateByPrimaryKey(record);
    }

    public int updateByExampleSelective(PictureUnit record, PictureUnitExample example) {
        return this.pictureUnitMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(PictureUnit record, PictureUnitExample example) {
        return this.pictureUnitMapper.updateByExample(record, example);
    }

    public List<PictureUnit> listByExample(PictureUnitExample example) {
        return this.pictureUnitMapper.selectByExample(example);
    }

    public PictureUnit getById(Long id) {
        return this.pictureUnitMapper.selectByPrimaryKey(id);
    }

    public int countByExample(PictureUnitExample example) {
        return this.pictureUnitMapper.countByExample(example);
    }

    public Page<PictureUnit> listForPage(int pageCurrent, int pageSize, PictureUnitExample example) {
        int count = this.pictureUnitMapper.countByExample(example);
        pageSize = PageUtil.checkPageSize(pageSize);
        pageCurrent = PageUtil.checkPageCurrent(count, pageSize, pageCurrent);
        int totalPage = PageUtil.countTotalPage(count, pageSize);
        example.setLimitStart(PageUtil.countOffset(pageCurrent, pageSize));
        example.setPageSize(pageSize);
        return new Page<PictureUnit>(count, totalPage, pageCurrent, pageSize, this.pictureUnitMapper.selectByExample(example));
    }
}