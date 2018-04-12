package com.roncoo.recharge;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Maps;
import com.roncoo.recharge.util.ThridPartyInterface;
import com.roncoo.recharge.util.bean.*;
import com.roncoo.recharge.web.bean.qo.CarConfigQO;
import com.roncoo.recharge.web.service.CarConfigService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.BeanUtils;
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
                carConfigQO.setParentId(carConfigRes.getParentid());
                carConfigService.save(carConfigQO);
            }
        }
    }

    @Test
    public void insetCarList(){
        Map<String,String> querys = Maps.newHashMap();
        querys.put("parentid","1");
        String json = ThridPartyInterface.invokeAliCloudApi(ThridPartyInterface.CAR_LIST,querys);
        AliCloudResult<List<DepthTwo>> resAliCloudResult = JSON.parseObject(json,AliCloudResult.class);
        if(resAliCloudResult != null){
            String parentJson = JSON.toJSONString(resAliCloudResult.getResult());
            List<DepthTwo> depthTwoList = JSON.parseArray(parentJson,DepthTwo.class);

            for(DepthTwo depthTwo : depthTwoList){
                CarConfigQO carConfigQO = new CarConfigQO();
                carConfigQO.setSonId(depthTwo.getId());
                carConfigQO.setDepth(depthTwo.getDepth());
                carConfigQO.setName(depthTwo.getName());
                carConfigQO.setInitial(depthTwo.getInitial());
                carConfigQO.setParentId(depthTwo.getParentid());
                carConfigService.save(carConfigQO);

                for(DepthThree depthThree : depthTwo.getCarlist()){
                    CarConfigQO carConfigQO1 = new CarConfigQO();
                    carConfigQO1.setSonId(depthThree.getId());
                    carConfigQO1.setDepth(depthThree.getDepth());
                    carConfigQO1.setName(depthThree.getName());
                    carConfigQO1.setInitial(depthThree.getInitial());
                    carConfigQO1.setParentId(depthThree.getParentid());
                    carConfigQO1.setSaleState(depthThree.getSalestate());
                    carConfigService.save(carConfigQO1);

                    for(DepthFour depthFour : depthThree.getList()){
                        CarConfigQO carConfigQO2 = new CarConfigQO();
                        carConfigQO2.setSonId(depthFour.getId());
                        carConfigQO2.setDepth(depthFour.getDepth());
                        carConfigQO2.setName(depthFour.getName());
                        carConfigQO2.setInitial(depthFour.getInitial());
                        carConfigQO2.setParentId(depthFour.getParentid());

                        carConfigQO2.setSaleState(depthFour.getSalestate());
                        carConfigQO2.setSizeType(depthFour.getSizetype());
                        carConfigQO2.setYearType(depthFour.getYeartype());
                        carConfigQO2.setProductionState(depthFour.getProductionstate());
                        carConfigQO2.setPrice(depthFour.getPrice());
                        carConfigService.save(carConfigQO2);
                    }
                }
            }
        }

    }


}
