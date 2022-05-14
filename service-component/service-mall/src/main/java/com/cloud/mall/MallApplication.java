package com.cloud.mall;

import com.cloud.common.constant.GlobalConstant;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author zhuwj
 */
@EnableFeignClients
@EnableTransactionManagement
@ComponentScan(GlobalConstant.MAPPER_SCAN)
@SpringCloudApplication
public class MallApplication {
    public static void main(String[] args) {
        SpringApplication.run(MallApplication.class, args);
    }
}
