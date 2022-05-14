package com.cloud.gateway;

import com.cloud.common.constant.GlobalConstant;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.context.annotation.ComponentScan;
/**
 * @description: 网关应用启动
 * @author: zhuwj
 * @create: 2020-09-21 14:37
 **/
@ComponentScan(GlobalConstant.MAPPER_SCAN)
@SpringCloudApplication
public class GatewayApplication {
    public static void main(String[] args) {
        SpringApplication.run(GatewayApplication.class, args);
    }
}
