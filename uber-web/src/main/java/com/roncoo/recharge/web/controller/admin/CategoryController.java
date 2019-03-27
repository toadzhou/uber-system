package com.roncoo.recharge.web.controller.admin;

import com.roncoo.recharge.web.service.ImageService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roncoo.recharge.web.service.CategoryService;
import com.roncoo.recharge.web.bean.qo.CategoryQO;
import com.roncoo.recharge.util.base.BaseController;

/**
 * 分类信息
 *
 * @author mark
 * @since 2019-03-25
 */
@Controller
@RequestMapping(value = "/admin/category")
@Slf4j
public class CategoryController extends BaseController {

	private final static String TARGETID = "admin-category";

	@Autowired
	private CategoryService service;
	@Autowired
	private ImageService imageService;

	@RequestMapping(value = "/list")
	public void list(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute CategoryQO qo, ModelMap modelMap){
		modelMap.put("page", service.listForPage(pageCurrent, pageSize, qo));
		modelMap.put("pageCurrent", pageCurrent);
		modelMap.put("pageSize", pageSize);
		modelMap.put("bean", qo);
	}

	@RequestMapping(value = "/son")
	public void son(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute CategoryQO qo, ModelMap modelMap){
		modelMap.put("page", service.listForPage(pageCurrent, pageSize, qo));
		modelMap.put("pageCurrent", pageCurrent);
		modelMap.put("pageSize", pageSize);
		modelMap.put("bean", qo);
	}


	@RequestMapping(value = "/add")
	public void add(){

	}

	@RequestMapping(value = "/addSon")
	public void addSon(Long parentId, ModelMap modelMap){
		modelMap.put("parentId", parentId);
	}

	@ResponseBody
	@RequestMapping(value = "/save")
	public String save(@ModelAttribute CategoryQO qo){
		//保存一级类目
		qo.setIsLeaf(0);
		qo.setParentId(0L);
		if (service.save(qo) > 0) {
			return success(TARGETID);
		}
		return error("添加失败");
	}

	@ResponseBody
	@RequestMapping(value = "/saveSon")
	public String saveSon(@ModelAttribute CategoryQO qo){
		//保存二级类目
		qo.setIsLeaf(0);
		if(qo.getImageFile() != null){
			qo.setImage(imageService.uploadImage(qo.getImageFile()));
		}
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
	public String update(@ModelAttribute CategoryQO qo){
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
