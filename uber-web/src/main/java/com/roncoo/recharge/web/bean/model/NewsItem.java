package com.roncoo.recharge.web.bean.model;

import lombok.Data;
//import org.springframework.data.mongodb.core.mapping.Document;

/**
 * @Auther: xierongli
 * @Date: 2019-03-13 09:23
 * @Description: 新闻
 */
@Data
//@Document(collection="NEWS")
public class NewsItem {

    private String _id;
    private String title;
    private String content;
    private String pub_date;
    private String source;
    private String keywords;

}
