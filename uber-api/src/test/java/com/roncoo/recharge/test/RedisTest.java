package com.roncoo.recharge.test;

import cn.hutool.core.util.ObjectUtil;
import com.alibaba.fastjson.JSON;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.roncoo.recharge.facade.bean.model.Resource;
import org.apache.commons.collections4.CollectionUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2019-04-24 18:05
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class RedisTest {

    @Autowired
    private StringRedisTemplate stringRedisTemplate;


    @Test
    public void test(){
        stringRedisTemplate.opsForValue().set("test1", "marksss");
        System.out.println(stringRedisTemplate.opsForValue().get("test1"));

        String key1 = generateKey("3123122312",11L, "ppp");
        String key2 = generateKey("3123122312",12L, "ppp");
        String key3 = generateKey("3123122312",13L, "ppp");
        String key4 = generateKey("3123122312",14L, "ppp");

//        stringRedisTemplate.opsForValue().set(key1, "9");
//        stringRedisTemplate.opsForValue().set(key2, "2");
//        stringRedisTemplate.opsForValue().set(key3, "3");

        List<Resource> resourceList = Lists.newArrayList();
        Resource Resource1 = new Resource();
        Resource1.setId(11L);
        Resource1.setLimitNum(2);
        Resource1.setTimeLimitType(1);

        Resource Resource2 = new Resource();
        Resource2.setId(12L);
        Resource2.setLimitNum(2);
        Resource2.setTimeLimitType(1);

        Resource Resource3 = new Resource();
        Resource3.setId(13L);
        Resource3.setLimitNum(2);
        Resource3.setTimeLimitType(1);

        resourceList.add(Resource1);
        resourceList.add(Resource2);
        resourceList.add(Resource3);

        Optional<Map<Long, Boolean>> result = generate(resourceList, "3123122312");


        result.ifPresent(o-> System.out.println("value11:"+o.get(11L)));
        result.ifPresent(o-> System.out.println("value12:"+o.get(12L)));
        result.ifPresent(o-> System.out.println("value13:"+o.get(13L)));
    }


    public Optional<Map<Long, Boolean>> generate(List<Resource> resourceList, String imei){
        if(CollectionUtils.isNotEmpty(resourceList)){
            List<String> keys = Lists.newArrayList();
            for(Resource resource : resourceList){
                String adxIdeaKey = "";
                //创意曝光
                if(resource.getTimeLimitType()==1){
                    adxIdeaKey = generateKey(imei, resource.getId(),"ppp");
                }else {
                    //创意点击
                    adxIdeaKey = generateKey(imei, resource.getId(),"ccc");
                }
                keys.add(adxIdeaKey);
            }
            //获取创意点击数集合
            System.out.println("keys:"+ keys);
            List<String> objectList = stringRedisTemplate.opsForValue().multiGet(keys);
            System.out.println(objectList);
            //封装返回结果(resourceIdeaId->boolean)
            Map<Long, Boolean> map = Maps.newHashMap();
            for(int i=0; i<resourceList.size(); i++){
                if(ObjectUtil.isNull(objectList.get(i))){
                    map.put(resourceList.get(i).getId(), true);
                }else{
                    Integer number = Integer.parseInt(objectList.get(i).toString());
                    System.out.println("key:"+ resourceList.get(i).getId()+ "result:"+ (number>=resourceList.get(i).getLimitNum()));
                    map.put(resourceList.get(i).getId(), !(number>=resourceList.get(i).getLimitNum()));
                }
            }
            System.out.println("result:"+JSON.toJSONString(map));
            return Optional.ofNullable(map);
        }
        return Optional.empty();
    }

    public Boolean isOverLimitOfIdeaImei(Map<Long, Boolean> map, Long resourceIdeaId){
        return map.get(resourceIdeaId);
    }

    public String  generateKey(String imei, Long id, String flag){
        return id+"-"+imei+"-"+flag;
    }


}
