package com.roncoo.recharge.web.controller.admin;

import com.roncoo.recharge.common.entity.AcctInfo;
import com.roncoo.recharge.util.base.BaseController;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.web.bean.model.GirlItem;
import com.roncoo.recharge.web.bean.model.NewsItem;
import com.roncoo.recharge.web.bean.qo.QirlQO;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @Auther: xierongli
 * @Date: 2019-03-21 16:01
 * @Description: 妹纸信息控制器
 */
@Controller
@RequestMapping(value = "/admin/girl")
@Slf4j
public class GirlController extends BaseController {

    @Autowired
    private MongoTemplate mongoTemplate;

    @RequestMapping(value = "/list")
    public void list(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute QirlQO qo, ModelMap modelMap) {
        log.info("分页查询妹纸信息");
        qo.setTitle("真诚以待");

        //创建查询对象
        Query query = new Query();
        //设置起始数
        query.skip((pageCurrent - 1) * pageSize);
        //设置查询条数
        query.limit(pageSize);

        Criteria criteria = new Criteria();
        if(StringUtils.isNotBlank(qo.getTitle())){
            criteria.where("title").is(qo.getTitle());
        }
        query.addCriteria(criteria);
        List<GirlItem> girlItems = mongoTemplate.find(query, GirlItem.class);
        int count = (int) mongoTemplate.count(query, GirlItem.class);

        Page<GirlItem> page = new Page<>();
        page.setList(girlItems);
        page.setPageSize(count);
        page.setTotalCount(count % pageSize == 0 ? 1 : count / pageSize + 1);
        modelMap.put("page",page);
        modelMap.put("pageCurrent", pageCurrent);
        modelMap.put("pageSize", pageSize);
        modelMap.put("bean", qo);
    }


}
