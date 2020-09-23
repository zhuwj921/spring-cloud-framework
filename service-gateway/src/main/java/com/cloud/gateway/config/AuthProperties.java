package com.cloud.gateway.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import java.util.Set;

/**
 * @title: security 配置
 * @description: 安全配置信息
 * @author: zhuwj
 * @create: 2020-09-21 14:37
 **/
@Data
@Configuration
@ConfigurationProperties(prefix = "auth")
public class AuthProperties {

    /**
     *  不需要鉴权的url
     */
    private Set<String> ignoreUrlPatterns;


}
