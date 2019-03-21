package com.roncoo.recharge.facade.service;

import com.roncoo.recharge.facade.bean.request.LoginUserReq;

/**
 * @Auther: xierongli
 * @Date: 2019-03-21 15:04
 * @Description:
 */
public interface LoginHandler {

    void handle(LoginUserReq loginUserReq);
}
