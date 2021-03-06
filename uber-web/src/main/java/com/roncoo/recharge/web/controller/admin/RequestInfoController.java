package com.roncoo.recharge.web.controller.admin;

import com.roncoo.recharge.web.bean.vo.LocationVO;
import com.roncoo.recharge.web.bean.vo.RequestInfoVO;
import com.roncoo.recharge.web.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roncoo.recharge.web.service.RequestInfoService;
import com.roncoo.recharge.web.bean.qo.RequestInfoQO;
import com.roncoo.recharge.util.base.BaseController;

/**
 * 打车请求信息 
 *
 * @author mark
 * @since 2018-04-16
 */
@Controller
@RequestMapping(value = "/admin/requestInfo")
public class RequestInfoController extends BaseController {

	private final static String TARGETID = "admin-requestInfo";

	@Autowired
	private RequestInfoService service;
	@Autowired
	private LocationService locationService;


	@RequestMapping("map")
	public void showMap(Long requestInfoId ,ModelMap modelMap){
		RequestInfoVO requestInfoVO = service.getById(requestInfoId);
		if(requestInfoVO != null){
			LocationVO departure = locationService.getById(requestInfoVO.getDepartureId());
			LocationVO destination =  locationService.getById(requestInfoVO.getDestinationId());
			modelMap.put("dep_x",departure.getLatitude());
			modelMap.put("dep_y",departure.getLongitude());
			modelMap.put("des_x",destination.getLatitude());
			modelMap.put("des_y",destination.getLongitude());
		}
	}

	
	@RequestMapping(value = "/list")
	public void list(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute RequestInfoQO qo, ModelMap modelMap){
		modelMap.put("page", service.listForPage(pageCurrent, pageSize, qo));
		modelMap.put("pageCurrent", pageCurrent);
		modelMap.put("pageSize", pageSize);
		modelMap.put("bean", qo);
	}
	
	@RequestMapping(value = "/add")
	public void add(){
	
	}
	
	@ResponseBody
	@RequestMapping(value = "/save")
	public String save(@ModelAttribute RequestInfoQO qo){
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
	public String update(@ModelAttribute RequestInfoQO qo){
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
