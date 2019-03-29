package com.roncoo.recharge.web.controller.admin;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Lists;
import com.roncoo.recharge.common.entity.Brand;
import com.roncoo.recharge.util.ObjectConvert;
import com.roncoo.recharge.util.enums.StatusIdEnum;
import com.roncoo.recharge.util.enums.UserTypeEnum;
import com.roncoo.recharge.web.bean.dto.AttrGroupDTO;
import com.roncoo.recharge.web.bean.dto.BrandDTO;
import com.roncoo.recharge.web.bean.qo.BrandQO;
import com.roncoo.recharge.web.service.BrandService;
import com.xiaoleilu.hutool.util.CollectionUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roncoo.recharge.web.service.GoodsTypeService;
import com.roncoo.recharge.web.bean.qo.GoodsTypeQO;
import com.roncoo.recharge.util.base.BaseController;

import java.util.Arrays;
import java.util.List;

/**
 * 商品类型
 *
 * @author mark
 * @since 2019-03-28
 */
@Controller
@RequestMapping(value = "/admin/goodsType")
public class GoodsTypeController extends BaseController {

	private final static String TARGETID = "admin-goodsType";

	@Autowired
	private GoodsTypeService service;
	@Autowired
	private BrandService brandService;

	@RequestMapping(value = "/list")
	public void list(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute GoodsTypeQO qo, ModelMap modelMap){
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
	public String save(@ModelAttribute GoodsTypeQO qo){
		//设置属性分组
		if(StringUtils.isNotBlank(qo.getAttrGroup()) && qo.getAttrGroup().contains(",")){
			String[] attrGroups = qo.getAttrGroup().split(",");
			List<AttrGroupDTO> attrGroupDTOList = Lists.newArrayList();
			Integer index = 1;
			for(String attrGroup : attrGroups){
				AttrGroupDTO attrGroupDTO = new AttrGroupDTO();
				attrGroupDTO.setIndex(index);
				attrGroupDTO.setDescription(attrGroup);
				index ++;
				attrGroupDTOList.add(attrGroupDTO);
			}
			qo.setAttrGroup(JSON.toJSONString(attrGroupDTOList));
		}
		//设置关联品牌
		if(qo.getBrandIdList() != null && qo.getBrandIdList().length != 0){
			List<Long> ids = Arrays.asList(qo.getBrandIdList());
			List<Brand> brandList = brandService.queryForList(BrandQO.builder().ids(ids).build());
			List<BrandDTO> brandDTOList = ObjectConvert.convertList(brandList, BrandDTO.class);
			qo.setBrandIds(JSON.toJSONString(brandDTOList));
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
	public String update(@ModelAttribute GoodsTypeQO qo){
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
		modelMap.put("brandList", brandService.queryForList(null));
	}


}
