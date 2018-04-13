package com.roncoo.recharge.web.service;

import com.roncoo.recharge.common.entity.DriverLocation;
import com.roncoo.recharge.util.GeoHashUtil;
import com.roncoo.recharge.web.bean.qo.DriverLocationQO;
import com.roncoo.recharge.web.bean.qo.DriverSendLocationQO;
import com.roncoo.recharge.web.bean.qo.LocationQO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 调度服务
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/9 下午4:19 mark1xie Exp $$
 */
@Component
public class DispatchService {

    @Autowired
    private DriverLocationService driverLocationService;
    @Autowired
    private LocationService locationService;
    public void insertDriverLocation(DriverSendLocationQO driverSendLocationQO){
        //插入location
        GeoHashUtil g = new GeoHashUtil(driverSendLocationQO.getLongitude(),driverSendLocationQO.getLatitude());
        String hashCode = g.getGeoHashBase32();

        LocationQO locationQO = new LocationQO();
        locationQO.setAddress(driverSendLocationQO.getAddress());
        locationQO.setLatitude(driverSendLocationQO.getLatitude().toString());
        locationQO.setLongitude(driverSendLocationQO.getLongitude().toString());
        locationQO.setGeoHash(hashCode);
        Long locationId = locationService.save(locationQO);
        //判断司机是否上传过位置
        List<DriverLocation> driverLocationList = driverLocationService.queryForList(driverSendLocationQO.getDriverId());
        if(!driverLocationList.isEmpty()){
            DriverLocation driverLocation = driverLocationList.get(0);
            DriverLocationQO driverLocationQO = new DriverLocationQO();
            BeanUtils.copyProperties(driverLocationQO, driverLocation);
            driverLocationQO.setLocationId(locationId);
            driverLocationService.updateById(driverLocationQO);
        }else{
            //插入driver_location
            DriverLocationQO driverLocationQO = new DriverLocationQO();
            driverLocationQO.setDriverId(driverSendLocationQO.getDriverId());
            driverLocationQO.setLocationId(locationId);
            driverLocationQO.setStatus(1);
            driverLocationService.save(driverLocationQO);
        }
    }

}
