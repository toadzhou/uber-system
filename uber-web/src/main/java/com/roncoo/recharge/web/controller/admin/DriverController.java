package com.roncoo.recharge.web.controller.admin;

import com.alibaba.fastjson.JSON;
import com.roncoo.recharge.common.entity.DriverLocation;
import com.roncoo.recharge.util.bjui.Page;
import com.roncoo.recharge.web.bean.res.DriverLocationRes;
import com.roncoo.recharge.web.bean.vo.DriverVO;
import com.roncoo.recharge.web.service.DriverLocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roncoo.recharge.web.service.DriverService;
import com.roncoo.recharge.web.bean.qo.DriverQO;
import com.roncoo.recharge.util.base.BaseController;

/**
 * 司机基础信息 
 *
 * @author mark
 * @since 2018-04-12
 */
@Controller
@RequestMapping(value = "/admin/driver")
public class DriverController extends BaseController {

	private final static String TARGETID = "admin-driver";

	@Autowired
	private DriverService service;
	@Autowired
	private DriverLocationService driverLocationService;
	
	@RequestMapping(value = "/list")
	public void list(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute DriverQO qo, ModelMap modelMap){
		modelMap.put("page", service.listForPage(pageCurrent, pageSize, qo));
		modelMap.put("pageCurrent", pageCurrent);
		modelMap.put("pageSize", pageSize);
		modelMap.put("bean", qo);
	}
	@ResponseBody
	@RequestMapping("dataGrid")
	public String dataGrid(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute DriverQO qo){
		Page<DriverVO> driverVOPage = service.listForPage(pageCurrent, pageSize, qo);
		return JSON.toJSONString(driverVOPage);
	}

	@RequestMapping(value = "/driver_car_list")
	public void driverCarList(){

	}
	
	@RequestMapping(value = "/add")
	public void add(){
	
	}
	@RequestMapping(value = "/map")
	public void map(Long driverId, ModelMap modelMap){
		DriverLocationRes driverLocationRes = driverLocationService.getLocationByDriverId(driverId);
		modelMap.put("lat",driverLocationRes.getLat());
		modelMap.put("lng",driverLocationRes.getLng());
		modelMap.put("address",driverLocationRes.getAddress());
	}
	
	@ResponseBody
	@RequestMapping(value = "/save")
	public String save(@ModelAttribute DriverQO qo){
		if (service.save(qo) > 0) {
			return success(TARGETID);
		}
		return error("添加失败");
	}
	
	@ResponseBody
	@RequestMapping(value = "/delete")
	public String delete(@RequestParam(value = "id") Long id){
		if (service.deleteById(id) > 0) {
			return delete(TARGETID);
		}
		return error("删除失败");
	}
	
	@RequestMapping(value = "/edit")
	public void edit(@RequestParam(value = "id") Long id, ModelMap modelMap){
		modelMap.put("bean", service.getById(id));
	}
	
	@ResponseBody
	@RequestMapping(value = "/update")
	public String update(@ModelAttribute DriverQO qo){
		if (service.updateById(qo) > 0) {
			return success(TARGETID);
		}
		return error("修改失败");
	}
	
	@RequestMapping(value = "/view")
	public void view(@RequestParam(value = "id") Long id, ModelMap modelMap){
		modelMap.put("bean", service.getById(id));
	}
	
}
