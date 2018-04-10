package com.roncoo.recharge;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Maps;
import com.roncoo.recharge.util.ThridPartyInterface;
import com.roncoo.recharge.util.bean.AliCloudResult;
import com.roncoo.recharge.util.bean.CarConfigRes;
import com.roncoo.recharge.web.bean.qo.CarConfigQO;
import com.roncoo.recharge.web.service.CarConfigService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import java.util.List;
import java.util.Map;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/10 上午9:49 mark1xie Exp $$
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class CarConfigTest {

    @Autowired
    private CarConfigService carConfigService;

    @Test
    public void insertCarBrand(){
        String resultJSON = ThridPartyInterface.invokeAliCloudApi(ThridPartyInterface.carBrand,null);
        AliCloudResult<List<CarConfigRes>> resAliCloudResult = JSON.parseObject(resultJSON,AliCloudResult.class);
        if(resAliCloudResult != null){
            List<CarConfigRes> carConfigResList = JSON.parseArray(JSON.toJSONString(resAliCloudResult.getResult()),CarConfigRes.class);
            for(CarConfigRes carConfigRes : carConfigResList){
                CarConfigQO carConfigQO = new CarConfigQO();
                carConfigQO.setSonId(carConfigRes.getId());
                carConfigQO.setDepth(carConfigRes.getDepth());
                carConfigQO.setName(carConfigRes.getName());
                carConfigQO.setInitial(carConfigRes.getInitial());
                carConfigQO.setLogo(carConfigRes.getLogo());
                carConfigQO.setParentId(carConfigRes.getParentId());
                carConfigService.save(carConfigQO);
            }
        }
    }

    @Test
    public void insetCarList(){
        Map<String,String> querys = Maps.newHashMap();
        querys.put("parentid","28");
        String json = ThridPartyInterface.invokeAliCloudApi(ThridPartyInterface.carList,querys);
        System.out.println(json);
    }


}
