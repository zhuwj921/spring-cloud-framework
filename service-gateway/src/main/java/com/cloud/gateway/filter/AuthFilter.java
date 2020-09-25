package com.cloud.gateway.filter;

import cn.hutool.core.util.StrUtil;
import com.cloud.common.auth.TokenProvider;
import com.cloud.common.auth.UserInfo;
import com.cloud.common.utils.RedisUtil;
import com.cloud.gateway.config.AuthProperties;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.server.ServerWebExchange;
import org.springframework.web.server.WebFilter;
import org.springframework.web.server.WebFilterChain;
import reactor.core.publisher.Mono;

import java.util.Set;

/**
 * @description: 权限过滤器 进行权限校验
 * @author: zhuwj
 * @create: 2020-09-21 14:37
 **/
@Slf4j
@Component
@RequiredArgsConstructor
public class AuthFilter implements WebFilter, Ordered {

    private final TokenProvider tokenProvider;

    private final AuthProperties authProperties;


    @Override
    public Mono<Void> filter(ServerWebExchange exchange, WebFilterChain chain) {
        log.info("AuthFilter request start");
        Set<String> ignoreUrlPatterns = authProperties.getIgnoreUrlPatterns();
        String requestUrl = exchange.getRequest().getPath().value();
        //权限认证豁免验证
        for (String urlPatterns : ignoreUrlPatterns) {
            if (new AntPathMatcher().match(urlPatterns, requestUrl)) {
                return chain.filter(exchange);
            }
        }
        //权限认证校验
        String accessToken = tokenProvider.getToken(exchange);
        if (StrUtil.isBlank(accessToken)) {
            log.warn("AuthFilter accessToken is blank");
        }
        UserInfo userInfo = RedisUtil.get(accessToken, UserInfo.class);
        if (userInfo == null) {
            log.info("AuthFilter userInfo is null ");
        }

        log.info("AuthFilter request end ");
        return chain.filter(exchange);
    }

    @Override
    public int getOrder() {
        return -1;
    }


}
