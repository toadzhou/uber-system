package com.roncoo.recharge.web.controller.admin;


import com.roncoo.recharge.web.bean.enums.YesOrNoEnum;
import com.roncoo.recharge.web.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.roncoo.recharge.web.service.PictureUnitService;
import com.roncoo.recharge.web.bean.qo.PictureUnitQO;
import com.roncoo.recharge.util.base.BaseController;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 *  
 *
 * @author mark
 * @since 2019-07-14
 */
@Controller
@RequestMapping(value = "/admin/pictureUnit")
public class PictureUnitController extends BaseController {

	private final static String TARGETID = "admin-pictureUnit";

	@Autowired
	private PictureUnitService service;
	@Autowired
	private ImageService imageService;
	
	@RequestMapping(value = "/list")
	public void list(@RequestParam(value = "pageCurrent", defaultValue = "1") int pageCurrent, @RequestParam(value = "pageSize", defaultValue = "20") int pageSize, @ModelAttribute PictureUnitQO qo, ModelMap modelMap){
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
	public String save(@ModelAttribute PictureUnitQO qo){
		handleImage(qo);
		if (service.save(qo) > 0) {
			return success(TARGETID);
		}
		return error("添加失败");
	}
	public void handleImage(PictureUnitQO qo){
		if(qo.getImageFile() != null){
			try {
				BufferedImage bufferedImage = ImageIO.read(qo.getImageFile().getInputStream());
				qo.setUrlPath(imageService.uploadImage(qo.getImageFile()));
				qo.setWidth(bufferedImage.getWidth());
				qo.setHeight(bufferedImage.getHeight());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
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
	public String update(@ModelAttribute PictureUnitQO qo){
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
		modelMap.put("yesOrNoEnum", YesOrNoEnum.values());
	}
}
