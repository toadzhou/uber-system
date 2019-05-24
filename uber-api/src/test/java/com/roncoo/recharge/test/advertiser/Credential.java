package com.roncoo.recharge.test.advertiser;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 〈一句话功能简述〉<br>
 * Description: 资质审核
 *
 * @author xierongli
 * @create 2019/5/22 10:50
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Credential {

    private Integer cid;

    private String url;

    private String remarks;


}
