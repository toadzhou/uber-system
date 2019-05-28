package com.roncoo.recharge;

import com.battcn.swagger.annotation.EnableSwagger2Doc;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableSwagger2Doc
@SpringBootApplication
@EnableTransactionManagement
//@MapperScan("com.roncoo.recharge")
@EnableCaching
public class FacadeApplication  {

    public static void main(String[] args) {
        SpringApplication.run(FacadeApplication.class, args);
    }

}