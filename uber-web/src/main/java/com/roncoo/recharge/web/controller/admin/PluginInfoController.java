package com.roncoo.recharge.web.controller.admin;


import com.roncoo.recharge.common.entity.PluginImage;
import com.roncoo.recharge.web.bean.enums.UnitEnum;
import com.roncoo.recharge.web.bean.enums.YesOrNoEnum;
import com.roncoo.recharge.web.bean.qo.PictureUnitQO;
import com.roncoo.recharge.web.bean.qo.PluginImageQO;
import com.roncoo.recharge.web.service.PictureUnitService;
import com.roncoo.recharge.web.service.PluginImageService;
import org.apache.commons.collections.CollectionUtils;
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

import java.util.List;
import java.util.stream.Collectors;

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
	@Autowired
	private PluginImageService pluginImageService;
	@Autowired
	private PictureUnitService pictureUnitService;
	
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



	@RequestMapping(value = "/selectPicture")
	public void list(@RequestParam("pluginInfoId") Long pluginInfoId, @RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute PictureUnitQO qo, ModelMap modelMap){
		List<PluginImage> pluginInfoImageList =  pluginImageService.queryForList(PluginImageQO.builder().pluginId(pluginInfoId).build());
		if(CollectionUtils.isNotEmpty(pluginInfoImageList)){
			qo.setNotExcludeIds(pluginInfoImageList.stream().map(m->m.getImageId()).collect(Collectors.toList()));
		}
		modelMap.put("page", pictureUnitService.listForPage(pageCurrent, pageSize, qo));
		modelMap.put("pageCurrent", pageCurrent);
		modelMap.put("pageSize", pageSize);
		modelMap.put("bean", qo);
		modelMap.put("pluginInfoId", pluginInfoId);
	}

	@RequestMapping(value = "/showPluginImage")
	public void showPluginImage(@RequestParam("pluginInfoId") Long pluginInfoId,  @ModelAttribute PluginInfoQO qo, ModelMap modelMap){
		List<PluginImage> pluginInfoImageList =  pluginImageService.queryForList(PluginImageQO.builder().pluginId(pluginInfoId).build());
		if(CollectionUtils.isNotEmpty(pluginInfoImageList)){
			List<Long> imageIdList = pluginInfoImageList.stream().map(m->m.getImageId()).collect(Collectors.toList());
			modelMap.put("list", pictureUnitService.queryForList(PictureUnitQO.builder().ids(imageIdList).build()));
		}
	}

	@RequestMapping(value = "/set")
	public String set(@RequestParam("pluginInfoId") Long pluginInfoId, @RequestParam("imageId")Long imageId){
		PluginImageQO qo  = new PluginImageQO();
		qo.setImageId(imageId);
		qo.setPluginId(pluginInfoId);
		if (pluginImageService.save(qo) > 0) {
			return success(TARGETID);
		}
		return error("操作失败");
	}

	@ModelAttribute
	public void enums(ModelMap modelMap) {
		modelMap.put("unitEnum", UnitEnum.values());
		modelMap.put("statusIdEnums", YesOrNoEnum.values());
	}
	
}
