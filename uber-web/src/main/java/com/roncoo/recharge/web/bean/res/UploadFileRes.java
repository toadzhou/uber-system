package com.roncoo.recharge.web.bean.res;

import lombok.Data;

/**
 * 〈一句话功能简述〉<br>
 * Description: 上传文件返回码
 * {
 * 	"statusCode":"200",
 * 	"message":"上传成功！",
 * 	"filename":"images/bjui-b.png"
 * }
 *
 * @author xierongli
 * @create 2019-07-20 13:54
 */
@Data
public class UploadFileRes {


   private String statusCode;
   private String message;
   private String filename;

}
