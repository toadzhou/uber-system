package com.roncoo.recharge.common.dao;

import com.roncoo.recharge.common.entity.PictureUnit;
import com.roncoo.recharge.common.entity.PictureUnitExample;
import com.roncoo.recharge.util.bjui.Page;
import java.util.List;

public interface PictureUnitDao {
    int insert(PictureUnit record);

    int save(PictureUnit record);

    int deleteByExample(PictureUnitExample example);

    int deleteById(Long id);

    int updateById(PictureUnit record);

    int updateByPrimaryKey(PictureUnit record);

    int updateByExampleSelective(PictureUnit record, PictureUnitExample example);

    int updateByExample(PictureUnit record, PictureUnitExample example);

    PictureUnit getById(Long id);

    List<PictureUnit> listByExample(PictureUnitExample example);

    int countByExample(PictureUnitExample example);

    Page<PictureUnit> listForPage(int pageCurrent, int pageSize, PictureUnitExample example);
}