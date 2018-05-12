package com.cloud.zhuwj.weixin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: 微信服务启动入口
 * @date 2018/3/08.
 */
@Configuration
@EnableEurekaClient
@EnableFeignClients
@SpringBootApplication
@ServletComponentScan
@ComponentScan(basePackages={"com.cloud.zhuwj"})
@MapperScan("com.cloud.zhuwj.weixin.dao")
public class WeixinApplication {
    public static void main(String[] args) {
        SpringApplication.run(WeixinApplication.class, args);
    }
}
