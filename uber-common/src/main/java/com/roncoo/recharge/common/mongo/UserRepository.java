package com.roncoo.recharge.common.mongo;

import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * @author xierongli
 * @version $$Id: uber-system, v 0.1 2018/4/17 下午3:41 mark1xie Exp $$
 */

public interface UserRepository extends MongoRepository<User, Long> {

    User findByUsername(String username);

}
