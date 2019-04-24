package com.roncoo.recharge.facade.bean.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2019-04-24 19:23
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Resource {
    private Long id;
    private Integer limitNum;
    private Integer timeLimitType;
}
