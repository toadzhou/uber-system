package com.roncoo.recharge.web.service;

import com.roncoo.recharge.common.entity.AccountInfo;
import com.roncoo.recharge.common.mapper.AccountInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 〈一句话功能简述〉<br>
 * Description: 账户
 *
 * @author xierongli
 * @create 2020-04-08 13:27
 */
@Component
public class AccountInfoService {


    @Autowired
    private AccountInfoMapper accountInfoMapper;


    public void insert(AccountInfo accountInfo){
        accountInfoMapper.insertSelective(accountInfo);

        int res = 1/0;
    }
}
