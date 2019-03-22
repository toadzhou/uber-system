package com.roncoo.recharge.web.task;

import com.roncoo.recharge.web.bean.model.GirlItem;
import com.roncoo.recharge.web.service.GirlService;
import com.xiaoleilu.hutool.util.CollectionUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @Auther: xierongli
 * @Date: 2019-03-22 19:41
 * @Description: 定时任务
 */
@Component
@Slf4j
public class Task {

    @Autowired
    private MongoTemplate mongoTemplate;
    @Autowired
    private GirlService girlService;


    @Scheduled(fixedRate = 1 * 60000)
    public void brushShareLogData() {
        log.info("执行定时任务刷新用户分享数据");
        Query query = new Query();
        Criteria c = new Criteria();
        c.where("user_id").is("49991438823377212");
        query.addCriteria(c);

        List<GirlItem> girlItemList = mongoTemplate.find(query, GirlItem.class);
        if(CollectionUtil.isNotEmpty(girlItemList)){

            GirlItem girlItem = girlItemList.get(0);
            String imageUrl = girlItem.getImage_url();
            String showImageUrl = girlService.uploadImage(imageUrl);
            Update update = Update.update("show_image_url", showImageUrl);
            mongoTemplate.updateMulti(query, update, GirlItem.class);
        }

    }
}
