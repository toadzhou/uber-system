package com.roncoo.recharge.web.controller.admin;

import com.roncoo.recharge.util.enums.StatusIdEnum;
import com.roncoo.recharge.util.enums.UserTypeEnum;
import com.roncoo.recharge.web.bean.enums.UnitEnum;
import com.roncoo.recharge.web.bean.enums.YesOrNoEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roncoo.recharge.web.service.PluginInfoService;
import com.roncoo.recharge.web.bean.qo.PluginInfoQO;
import com.roncoo.recharge.util.base.BaseController;

/**
 * 插件(此处商品) 
 *
 * @author mark
 * @since 2019-08-13
 */
@Controller
@RequestMapping(value = "/admin/pluginInfo")
public class PluginInfoController extends BaseController {

	private final static String TARGETID = "admin-pluginInfo";

	@Autowired
	private PluginInfoService service;
	
	@RequestMapping(value = "/list")
	public void list(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute PluginInfoQO qo, ModelMap modelMap){
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
	public String save(@ModelAttribute PluginInfoQO qo){
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
	public String update(@ModelAttribute PluginInfoQO qo){
		if (service.updateById(qo) > 0) {
			return success(TARGETID);
		}
		return error("修改失败");
	}
	
	@RequestMapping(value = "/view")
	public void view(@RequestParam(value = "id") Long id, ModelMap modelMap){
		modelMap.put("bean", service.getById(id));
	}


	@ModelAttribute
	public void enums(ModelMap modelMap) {
		modelMap.put("unitEnum", UnitEnum.values());
		modelMap.put("statusIdEnums", YesOrNoEnum.values());
	}
	
}
