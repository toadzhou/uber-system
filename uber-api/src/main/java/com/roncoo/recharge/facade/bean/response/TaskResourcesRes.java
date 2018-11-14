package com.roncoo.recharge.facade.bean.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * TaskResourcesRes
 *
 * @author yz3702
 * @create 2018/8/13
 **/
@Data
@Builder
@Accessors(chain = true)
@AllArgsConstructor
@NoArgsConstructor
public class TaskResourcesRes {
    Long id;
    String path;
}
