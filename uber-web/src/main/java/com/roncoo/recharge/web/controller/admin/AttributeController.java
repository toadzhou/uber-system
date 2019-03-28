package com.roncoo.recharge.web.controller.admin;

import com.alibaba.fastjson.JSON;
import com.roncoo.recharge.common.entity.Attribute;
import com.roncoo.recharge.common.entity.GoodsType;
import com.roncoo.recharge.web.bean.dto.AttrGroupDTO;
import com.roncoo.recharge.web.bean.vo.GoodsTypeVO;
import com.roncoo.recharge.web.service.GoodsTypeService;
import com.xiaoleilu.hutool.util.CollectionUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roncoo.recharge.web.service.AttributeService;
import com.roncoo.recharge.web.bean.qo.AttributeQO;
import com.roncoo.recharge.util.base.BaseController;

import java.util.List;

/**
 * 属性表
 *
 * @author mark
 * @since 2019-03-27
 */
@Controller
@RequestMapping(value = "/admin/attribute")
public class AttributeController extends BaseController {

	private final static String TARGETID = "admin-attribute";

	@Autowired
	private AttributeService service;
	@Autowired
	private GoodsTypeService goodsTypeService;

	@RequestMapping(value = "/list")
	public void list(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute AttributeQO qo, ModelMap modelMap){
		modelMap.put("page", service.listForPage(pageCurrent, pageSize, qo));
		modelMap.put("pageCurrent", pageCurrent);
		modelMap.put("pageSize", pageSize);
		modelMap.put("bean", qo);
	}

	@RequestMapping(value = "/add")
	public void add(Long goodsTypeId, ModelMap modelMap){
		GoodsTypeVO goodsTypeVO = goodsTypeService.getById(goodsTypeId);
		if(StringUtils.isNotBlank(goodsTypeVO.getAttrGroup())){
			List<AttrGroupDTO> attrGroupDTOList = JSON.parseArray(goodsTypeVO.getAttrGroup(), AttrGroupDTO.class);
			modelMap.put("attrGroupDTOList", attrGroupDTOList);
		}
		List<Attribute> attributeList = service.queryForList(AttributeQO.builder().goodsTypeId(goodsTypeId).build());
		if(CollectionUtil.isNotEmpty(attributeList)){
			modelMap.put("sortOrder", attributeList.get(0).getSortOrder()+1);
		}
		modelMap.put("goodsTypeId", goodsTypeId);
	}

	@ResponseBody
	@RequestMapping(value = "/save")
	public String save(@ModelAttribute AttributeQO qo){
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
	public String update(@ModelAttribute AttributeQO qo){
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
