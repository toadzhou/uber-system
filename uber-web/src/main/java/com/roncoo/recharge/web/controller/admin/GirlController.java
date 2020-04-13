package com.roncoo.recharge.web.controller.admin;

//import com.alibaba.fastjson.JSON;
//import com.mongodb.WriteResult;
//import com.roncoo.recharge.util.base.BaseController;
//import com.roncoo.recharge.util.bjui.Page;
//import com.roncoo.recharge.web.bean.model.GirlItem;
//import com.roncoo.recharge.web.bean.qo.QirlQO;
//import com.xiaoleilu.hutool.util.CollectionUtil;
//import lombok.extern.slf4j.Slf4j;
//import org.apache.commons.lang.StringUtils;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.mongodb.core.MongoTemplate;
//import org.springframework.data.mongodb.core.query.Criteria;
//import org.springframework.data.mongodb.core.query.Query;
//import org.springframework.data.mongodb.core.query.Update;
import com.roncoo.recharge.util.base.BaseController;
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
//@Slf4j
public class GirlController extends BaseController {

//    @Autowired
//    private MongoTemplate mongoTemplate;

//    @RequestMapping(value = "/list")
//    public void list(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute QirlQO qo, ModelMap modelMap) {
        //log.info("分页查询妹纸信息");

//        //创建查询对象
//        Query query = new Query();
//        //设置起始数
//        query.skip((pageCurrent - 1) * pageSize);
//        //设置查询条数
//        query.limit(pageSize);

//        Criteria criteria = new Criteria();
//        if(StringUtils.isNotBlank(qo.getTitle())){
//            criteria.where("title").is(qo.getTitle());
//        }
//        query.addCriteria(criteria);
//        List<GirlItem> girlItems = mongoTemplate.find(query, GirlItem.class);
//        int count = (int) mongoTemplate.count(query, GirlItem.class);
//
//        Page<GirlItem> page = new Page<>();
//        page.setList(girlItems);
//        page.setPageSize(pageSize);
//        page.setPageCurrent(pageCurrent);
//        page.setTotalCount(count);
//        Integer totalPage = count % pageSize == 0 ? 1 : count / pageSize + 1;
//        page.setTotalPage(totalPage);
//        modelMap.put("page",page);
//        modelMap.put("pageCurrent", pageCurrent);
//        modelMap.put("pageSize", pageSize);
//        modelMap.put("bean", qo);
//    }

    @RequestMapping("view")
    public void view(String id, ModelMap modelMap){
//        log.info("查看妹纸详情 id:{}",id);
//        Query query = new Query(Criteria.where("user_id").is(id)).limit(1);
//        List<GirlItem> girlItemList = mongoTemplate.find(query,GirlItem.class);
//        if(CollectionUtil.isNotEmpty(girlItemList)){
//            GirlItem girlItem = girlItemList.get(0);
//            if(girlItem.getView_number().contains("万")){
//                String viewNumber = girlItem.getView_number();
//                viewNumber = viewNumber.replace("万","").replace(".","").trim();
//                Update update = Update.update("view_number", Integer.parseInt(viewNumber)*10000);
//                WriteResult writeResult = mongoTemplate.updateMulti(query, update,GirlItem.class);
//                System.out.println(JSON.toJSONString(writeResult));
//            }
//            modelMap.put("bean", girlItem);
//        }
    }


}
