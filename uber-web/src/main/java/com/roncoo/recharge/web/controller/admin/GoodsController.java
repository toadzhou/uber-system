package com.roncoo.recharge.web.controller.admin;

import com.roncoo.recharge.common.entity.Brand;
import com.roncoo.recharge.common.entity.Category;
import com.roncoo.recharge.web.bean.qo.CategoryQO;
import com.roncoo.recharge.web.service.BrandService;
import com.roncoo.recharge.web.service.CategoryService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roncoo.recharge.web.service.GoodsService;
import com.roncoo.recharge.web.bean.qo.GoodsQO;
import com.roncoo.recharge.util.base.BaseController;

import java.util.List;

/**
 * 商品表
 *
 * @author mark
 * @since 2019-03-28
 */
@Controller
@RequestMapping(value = "/admin/goods")
@Slf4j
public class GoodsController extends BaseController {

	private final static String TARGETID = "admin-goods";

	@Autowired
	private GoodsService service;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private BrandService brandService;

	@RequestMapping(value = "/list")
	public void list(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute GoodsQO qo, ModelMap modelMap){
		modelMap.put("page", service.listForPage(pageCurrent, pageSize, qo));
		modelMap.put("pageCurrent", pageCurrent);
		modelMap.put("pageSize", pageSize);
		modelMap.put("bean", qo);
	}

	@RequestMapping(value = "/add")
	public void add(ModelMap modelMap){
		List<Category> categoryList = categoryService.queryForList(CategoryQO.builder().parentId(0L).build());
		modelMap.put("categoryList",categoryList);

		List<Brand> brandList = brandService.queryForList(null);
		modelMap.put("brandList",brandList);
	}
	@ResponseBody
	@RequestMapping(value = "/secondCategory")
	public String secondCategory(Long parentId){
	    log.info("查询二级类目 parentId:{}", parentId);
		return "";
	}

	@ResponseBody
	@RequestMapping(value = "/save")
	public String save(@ModelAttribute GoodsQO qo){
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
	public String update(@ModelAttribute GoodsQO qo){
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
