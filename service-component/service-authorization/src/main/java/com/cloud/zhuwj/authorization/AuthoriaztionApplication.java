package com.cloud.zhuwj.authorization;

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
 * @Description:  授权服务启动入口
 * @date 2018/1/21.
 */
@Configuration
@EnableEurekaClient
@EnableFeignClients
@SpringBootApplication
@ComponentScan(basePackages={"com.cloud.zhuwj"})
@MapperScan("com.cloud.zhuwj.authorization.dao")
public class AuthoriaztionApplication {
    public static void main(String[] args) {
        SpringApplication.run(AuthoriaztionApplication.class, args);
    }
}
