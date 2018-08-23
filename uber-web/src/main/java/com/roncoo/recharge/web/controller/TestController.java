package com.roncoo.recharge.web.controller;

import com.alibaba.fastjson.JSON;
import com.github.abel533.echarts.Option;
import com.github.abel533.echarts.code.Trigger;
import com.github.abel533.echarts.data.PieData;
import com.github.abel533.echarts.series.Pie;
import com.roncoo.recharge.web.bean.qo.DriverSendLocationQO;
import com.roncoo.recharge.web.bean.req.DispatchReq;
import com.roncoo.recharge.web.bean.res.RequestInfoReq;
import com.roncoo.recharge.web.service.DispatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/10 下午3:47 mark1xie Exp $$
 */
@Controller
@RequestMapping(value = "/test")
public class TestController {

    @Autowired
    private DispatchService dispatchService;

    @RequestMapping("system")
    public String system(ModelMap modelMap){
        String libraryPath = System.getProperty("java.library.path");
        String usrDir = System.getProperty("user.dir");
        String path = "/home/workspace/uber-system/doc/face_detection/lib/linux_x64/libarcsoft_fsdk_face_detection.so";
        System.loadLibrary(libraryPath+":"+path);
        modelMap.put("libraryPath",libraryPath);
        modelMap.put("usrDir",usrDir);
        modelMap.put("newPath",System.getProperty("java.library.path"));
        return "system";
    }

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

    @RequestMapping("test")
    public String test(){
        return "test";
    }

    @ResponseBody
    @RequestMapping("pie")
    public String pie(){
        Option basic = new Option();
        basic.tooltip().trigger(Trigger.item).formatter("{a} <br/>{b} : {c} ({d}%)");
        basic.legend().data("Chrome", "Firefox", "Safari", "IE8-");
        int idx = 1;
        Pie pie = getPie(idx++).center("50%", "45%").radius("50%");
        pie.label().normal().show(true).formatter("{b}{c}({d}%)");
        basic.series(pie);

        return JSON.toJSONString(basic);
    }

    public Pie getPie(int idx) {
        return new Pie().name("浏览器（数据纯属虚构）").data(
                new PieData("Chrome", idx * 128 + 80),
                new PieData("Firefox", idx * 64 + 160),
                new PieData("Safari", idx * 32 + 320),
                new PieData("IE8-", idx * 8 + 1280));
    }
    @ResponseBody
    @RequestMapping("pie2")
    public String pie2(){
        Option basic = new Option();
        basic.tooltip().trigger(Trigger.item).formatter("{a} <br/>{b} : {c} ({d}%)");
        basic.legend().data("直接访问","邮件营销","联盟广告","视频广告");
        Pie pie = getData().radius("50%","70%");
        pie.label().normal().show(true).formatter("{b} : {c} ({d}%)");
        basic.series(pie);
        return JSON.toJSONString(basic);
    }

    public Pie getData(){
       return new Pie().name("访问来源").data(
                new PieData("直接访问",  80),
                new PieData("邮件营销",  160),
                new PieData("联盟广告",  320),
                new PieData("视频广告-", 80));
    }

}
