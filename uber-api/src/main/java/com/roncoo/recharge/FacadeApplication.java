package com.roncoo.recharge;

import com.battcn.swagger.annotation.EnableSwagger2Doc;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableSwagger2Doc
@SpringBootApplication
@EnableTransactionManagement
public class FacadeApplication  {

    public static void main(String[] args) {
        SpringApplication.run(FacadeApplication.class, args);
    }

}