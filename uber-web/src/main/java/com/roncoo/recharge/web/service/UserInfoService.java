package com.roncoo.recharge.web.service;

import com.roncoo.recharge.common.entity.AccountInfo;
import com.roncoo.recharge.common.entity.UserInfo;
import com.roncoo.recharge.common.mapper.UserInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 〈一句话功能简述〉<br>
 * Description: 用户
 *
 * @author xierongli
 * @create 2020-04-08 13:26
 */
@Component
public class UserInfoService {

    @Autowired
    private UserInfoMapper userInfoMapper;

    @Autowired
    private AccountInfoService accountInfoService;


    public void insert(UserInfo userInfo){
        userInfoMapper.insertSelective(userInfo);

        AccountInfo accountInfo = new AccountInfo();
        accountInfo.setBalance(100);
        accountInfo.setUserId(1L);
        accountInfoService.insert(accountInfo);
    }


    public void test(){
        System.out.println("test....");

    }
}
