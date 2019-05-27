package com.roncoo.recharge.facade.service.impl;

import com.roncoo.recharge.common.dao.GoodsDao;
import com.roncoo.recharge.common.entity.Goods;
import com.roncoo.recharge.common.entity.GoodsComment;
import com.roncoo.recharge.facade.bean.dto.GoodsCommentDTO;
import com.roncoo.recharge.facade.bean.dto.GoodsDTO;
import com.roncoo.recharge.facade.service.GoodsCommentService;
import com.roncoo.recharge.facade.service.GoodsService;
import com.roncoo.recharge.util.ObjectConvert;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;

/**
 * 〈一句话功能简述〉<br>
 * Description: 商品实现
 *
 * @author xierongli
 * @create 2019/5/27 16:18
 */
@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsDao goodsDao;
    @Autowired
    private GoodsCommentService goodsCommentService;


    @Override
    public GoodsDTO getById(Long id) {
        Goods goods = goodsDao.getById(id);

        GoodsDTO goodsDTO = new GoodsDTO();
        goodsDTO.setId(goods.getId());
        goodsDTO.setGoodsName(goods.getGoodsName());
        List<GoodsComment> goodsCommentList = goodsCommentService.queryForList(id);
        if(CollectionUtils.isNotEmpty(goodsCommentList)){
            goodsDTO.setGoodsCommentList(ObjectConvert.convertList(goodsCommentList, GoodsCommentDTO.class));
        }
        return goodsDTO;
    }

    @Override
    public GoodsDTO getById(Long id, Integer level) {
        Goods goods = goodsDao.getById(id);

        GoodsDTO goodsDTO = new GoodsDTO();
        goodsDTO.setId(goods.getId());
        goodsDTO.setGoodsName(goods.getGoodsName());
        List<GoodsComment> goodsCommentList = goodsCommentService.queryForList(id);
        //根据等级筛选并返回评论标题集合
        List<String> commentTitleList = filter( goodsCommentList, goodsComment -> goodsComment.getLevel() == level, goodsComment -> goodsComment.getTitle());
        //根据等级筛选并返回模型
        List<GoodsComment> filerList = filter(goodsCommentList, goodsComment -> goodsComment.getLevel() == level, Function.identity());
        goodsDTO.setTitleList(commentTitleList);
        goodsDTO.setGoodsCommentList(ObjectConvert.convertList(filerList, GoodsCommentDTO.class));
        return goodsDTO;
    }


    //筛选&&截取
    public static <R> List<R> filter(List<GoodsComment> list, Predicate<GoodsComment> predicate, Function<GoodsComment, R> function){
        List<R> result = new ArrayList<>();
        for (GoodsComment t : list) {
            if(predicate.test(t)){
                result.add(function.apply(t));
            }
        }
        return result;
    }



}
