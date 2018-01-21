package com.cloud.zhuwj.user;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Configuration;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: 用户服务启动入口
 * @date 2018/1/21.
 */
@Configuration
@EnableEurekaClient
@SpringBootApplication
public class UserAppication {
    public static void main(String[] args) {
        SpringApplication.run(UserAppication.class, args);
    }
}
