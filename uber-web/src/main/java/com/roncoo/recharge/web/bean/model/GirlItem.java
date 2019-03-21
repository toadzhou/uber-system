package com.roncoo.recharge.web.bean.model;

import lombok.Data;
import org.springframework.data.mongodb.core.mapping.Document;

import java.io.Serializable;

/**
 * @Auther: xierongli
 * @Date: 2019-03-21 16:03
 * @Description:
 */
@Data
@Document(collection="girl")
public class GirlItem implements Serializable {

    private String title;
    private String detail_url;
    private String pick_up_time;
    private String image_url;
    private String view_number;
    private String reply_number;
    private String user_id;
}


