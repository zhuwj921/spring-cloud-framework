package com.cloud.zhuwj.web;

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
 * @Description:  web服务启动入口
 * @date 2018/1/21.
 */
@Configuration
@EnableEurekaClient
@EnableFeignClients
@SpringBootApplication
@ComponentScan(basePackages={"com.cloud.zhuwj"})
public class WebApplication {
    public static void main(String[] args) {
        SpringApplication.run(WebApplication.class, args);
    }
}
