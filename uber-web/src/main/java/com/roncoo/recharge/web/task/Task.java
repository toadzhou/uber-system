package com.roncoo.recharge.web.task;

import com.alibaba.fastjson.JSON;
import com.mongodb.WriteResult;
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
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

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


    @Scheduled(fixedRate = 5 * 60000)
    public void brushShareLogData() {
        log.info("执行定时任务刷新数据");
        Query query = new Query();
        Criteria c = new Criteria();
//        c.where("user_id").is("49991438823377212");
        query.addCriteria(c);

        List<GirlItem> girlItemList = mongoTemplate.find(query, GirlItem.class);
        if(CollectionUtil.isNotEmpty(girlItemList)){

            ExecutorService executorService = Executors.newCachedThreadPool();
            girlItemList.forEach(girlItem -> {
                executorService.execute(()->{
                    Integer modifyNumber = 0;
                    if(girlItem.getView_number().contains("万")){
                        String viewNumber = girlItem.getView_number();
                        viewNumber = viewNumber.replace("万","").split(".")[0].trim();
                        modifyNumber = Integer.parseInt(viewNumber) * 10000;
                    }
                    String imageUrl = girlItem.getImage_url();
                    String showImageUrl = girlService.uploadImage(imageUrl);
                    Update update = Update.update("show_image_url", showImageUrl);
                    if(modifyNumber != 0){
                        update.set("view_number", modifyNumber);
                    }
                    WriteResult writeResult =  mongoTemplate.updateMulti(query, update, GirlItem.class);
                    log.info("定时任务执行成功 result:{}", JSON.toJSONString(writeResult));

                });
            });

        }

    }
}
