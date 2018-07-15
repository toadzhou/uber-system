package com.roncoo.recharge.web.controller;

import com.alibaba.fastjson.JSON;
import com.github.abel533.echarts.Option;
import com.github.abel533.echarts.code.Magic;
import com.github.abel533.echarts.code.Tool;
import com.github.abel533.echarts.code.Trigger;
import com.github.abel533.echarts.code.X;
import com.github.abel533.echarts.data.PieData;
import com.github.abel533.echarts.feature.MagicType;
import com.github.abel533.echarts.series.Funnel;
import com.github.abel533.echarts.series.Pie;
import com.roncoo.recharge.web.bean.qo.DriverSendLocationQO;
import com.roncoo.recharge.web.bean.req.DispatchReq;
import com.roncoo.recharge.web.bean.res.RequestInfoReq;
import com.roncoo.recharge.web.service.DispatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
//        basic.toolbox().show(true).feature(Tool.mark, Tool.dataView, Tool.restore, Tool.saveAsImage, new MagicType(Magic.pie, Magic.funnel)
//                .option(new MagicType.Option().funnel(
//                        new Funnel().x("25%").width("50%").funnelAlign(X.left).max(1548))));

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

}
