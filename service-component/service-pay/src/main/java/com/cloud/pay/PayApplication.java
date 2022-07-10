package com.cloud.pay;

import com.cloud.common.constant.GlobalConstant;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author zhuwj
 */
@EnableTransactionManagement
@ComponentScan(GlobalConstant.COMPONENT_SCAN)
@MapperScan(GlobalConstant.MAPPER_SCAN)
@SpringCloudApplication
public class PayApplication {
    public static void main(String[] args) {
        SpringApplication.run(PayApplication.class, args);
    }
}
