package com.cloud.seckill;

import com.cloud.common.constant.GlobalConstant;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author zhuwj
 * @description: 秒杀服务
 */
@EnableFeignClients(basePackages = GlobalConstant.FEIGN_SCAN)
@EnableTransactionManagement
@ComponentScan(GlobalConstant.COMPONENT_SCAN)
@MapperScan(GlobalConstant.MAPPER_SCAN)
@SpringCloudApplication
public class SeckillApplication {
    public static void main(String[] args) {
        SpringApplication.run(SeckillApplication.class, args);
    }
}
