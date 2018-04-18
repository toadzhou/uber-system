package com.roncoo.recharge.web.controller;

import com.roncoo.recharge.web.bean.qo.DriverSendLocationQO;
import com.roncoo.recharge.web.bean.req.DispatchReq;
import com.roncoo.recharge.web.bean.res.RequestInfoReq;
import com.roncoo.recharge.web.service.DispatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/10 下午3:47 mark1xie Exp $$
 */
@Controller
@RequestMapping(value = "/test")
public class TestController {

    @Autowired
    private DispatchService dispatchService;

    @RequestMapping("driver")
    public String driver(){
        return "driver";
    }
    @RequestMapping("passenger")
    public String passenger(){
        return "passenger";
    }

    @RequestMapping("driver_location")
    public void insertDriverLocation(DriverSendLocationQO driverSendLocationQO){
        dispatchService.insertDriverLocation(driverSendLocationQO);
    }

    @RequestMapping("request_info")
    public void insertRequestInfo(RequestInfoReq requestInfoReq){
        dispatchService.insertRequestInfo(requestInfoReq);

        DispatchReq dispatchReq = new DispatchReq();
        dispatchReq.setPassengerId(requestInfoReq.getPassengerId());
        dispatchReq.setLatitude(requestInfoReq.getDepartureLat());
        dispatchReq.setLongitude(requestInfoReq.getDepartureLng());
        dispatchService.dispatch(dispatchReq);
    }

}
