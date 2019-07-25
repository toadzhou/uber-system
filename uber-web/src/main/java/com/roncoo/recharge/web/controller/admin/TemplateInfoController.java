package com.roncoo.recharge.web.controller.admin;

import com.roncoo.recharge.common.entity.TemplateImage;
import com.roncoo.recharge.common.entity.TemplateInfo;
import com.roncoo.recharge.web.bean.enums.UnitEnum;
import com.roncoo.recharge.web.bean.enums.YesOrNoEnum;
import com.roncoo.recharge.web.bean.qo.PictureUnitQO;
import com.roncoo.recharge.web.bean.qo.TemplateImageQO;
import com.roncoo.recharge.web.service.PictureUnitService;
import com.roncoo.recharge.web.service.TemplateImageService;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roncoo.recharge.web.service.TemplateInfoService;
import com.roncoo.recharge.web.bean.qo.TemplateInfoQO;
import com.roncoo.recharge.util.base.BaseController;

import java.util.List;
import java.util.stream.Collectors;

/**
 * 模板信息  
 *
 * @author mark
 * @since 2019-07-16
 */
@Controller
@RequestMapping(value = "/admin/templateInfo")
public class TemplateInfoController extends BaseController {

	private final static String TARGETID = "admin-templateInfo";

	@Autowired
	private TemplateInfoService service;
	@Autowired
	private PictureUnitService pictureUnitService;
	@Autowired
	private TemplateImageService templateImageService;


	
	@RequestMapping(value = "/list")
	public void list(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute TemplateInfoQO qo, ModelMap modelMap){
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
	public String save(@ModelAttribute TemplateInfoQO qo){
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
	public String update(@ModelAttribute TemplateInfoQO qo){
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
	public void list(@RequestParam("templateInfoId") Long templateInfoId, @RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute PictureUnitQO qo, ModelMap modelMap){
		List<TemplateImage> templateImageList =  templateImageService.queryForList(TemplateImageQO.builder().templateId(templateInfoId).build());
		if(CollectionUtils.isNotEmpty(templateImageList)){
			qo.setNotExcludeIds(templateImageList.stream().map(m->m.getImageId()).collect(Collectors.toList()));
		}
		modelMap.put("page", pictureUnitService.listForPage(pageCurrent, pageSize, qo));
		modelMap.put("pageCurrent", pageCurrent);
		modelMap.put("pageSize", pageSize);
		modelMap.put("bean", qo);
		modelMap.put("templateInfoId", templateInfoId);
	}

	@RequestMapping(value = "/set")
	public String set(@RequestParam("templateInfoId") Long templateInfoId, @RequestParam("imageId")Long imageId){
		TemplateImageQO qo  = new TemplateImageQO();
		qo.setImageId(imageId);
		qo.setTemplateId(templateInfoId);
		if (templateImageService.save(qo) > 0) {
			return success(TARGETID);
		}
		return error("操作失败");

	}


	@ModelAttribute
	public void enums(ModelMap modelMap) {
		modelMap.put("unitEnums", UnitEnum.values());
		modelMap.put("yesOrNoEnums", YesOrNoEnum.values());
	}
}
