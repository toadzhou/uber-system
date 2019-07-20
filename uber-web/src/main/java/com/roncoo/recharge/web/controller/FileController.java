package com.roncoo.recharge.web.controller;

import com.roncoo.recharge.web.bean.res.UploadFileRes;
import com.roncoo.recharge.web.service.ImageService;
import com.roncoo.recharge.web.service.PictureUnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * 〈一句话功能简述〉<br>
 * Description: 文件上传控制器
 *
 * @author xierongli
 * @create 2019-07-20 13:53
 */
@RestController
public class FileController {

    @Autowired
    private ImageService imageService;
    @Autowired
    private PictureUnitService pictureUnitService;

    @PostMapping("doc/form/ajaxPic")
    public UploadFileRes upload(MultipartFile file, String fileName, Long lastModifiedDate){
        UploadFileRes uploadFileRes = new UploadFileRes();

        uploadFileRes.setMessage("上传成功");
        uploadFileRes.setStatusCode("200");
        String url = imageService.uploadImage(file);
        uploadFileRes.setFilename(url);

        return  uploadFileRes;
    }
}
