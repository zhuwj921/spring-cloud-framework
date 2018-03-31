package com.cloud.zhuwj.quartz;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: 任务调度启动入口
 * @date 2018/3/31.
 */
@Configuration
@EnableEurekaClient
@EnableFeignClients
@SpringBootApplication
@ComponentScan(basePackages={"com.cloud.zhuwj"})
@MapperScan("com.cloud.zhuwj.quartz.dao")
public class QuartzApplication {
    public static void main(String[] args) {
        SpringApplication.run(QuartzApplication.class, args);
    }
}
