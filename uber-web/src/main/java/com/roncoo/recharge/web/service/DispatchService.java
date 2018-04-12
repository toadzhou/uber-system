package com.roncoo.recharge.web.service;

import com.roncoo.recharge.util.GeoHash;
import com.roncoo.recharge.web.bean.qo.DriverLocationQO;
import com.roncoo.recharge.web.bean.qo.DriverSendLocationQO;
import com.roncoo.recharge.web.bean.qo.LocationQO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

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
        GeoHash g = new GeoHash(driverSendLocationQO.getLatitude(),driverSendLocationQO.getLongitude());
        String hashCode = g.getGeoHashBase32();

        LocationQO locationQO = new LocationQO();
        locationQO.setAddress(driverSendLocationQO.getAddress());
        locationQO.setLatitude(driverSendLocationQO.getLatitude().toString());
        locationQO.setLongitude(driverSendLocationQO.getLongitude().toString());
        locationQO.setGeoHash(hashCode);
        Long locationId = locationService.save(locationQO);

        //插入driver_location
        DriverLocationQO driverLocationQO = new DriverLocationQO();
        driverLocationQO.setDriverId(driverLocationQO.getDriverId());
        driverLocationQO.setLocationId(locationId);
        driverLocationQO.setStatus(1);
        driverLocationService.save(driverLocationQO);
    }

}
