package com.roncoo.recharge;

import com.roncoo.recharge.common.entity.UserInfo;
import com.roncoo.recharge.web.service.UserInfoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * 〈一句话功能简述〉<br>
 * Description: 用户信息
 *
 * @author xierongli
 * @create 2020-04-08 13:39
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class UserInfoServiceTest {

    @Autowired
    private UserInfoService userInfoService;

    @Test
    public void testTx(){
        UserInfo userInfo = new UserInfo();
        userInfo.setName("mark");

        userInfoService.insert(userInfo);
    }
}
