package com.cloud.gateway.filter;

import com.cloud.common.auth.TokenProvider;
import com.cloud.common.utils.RedisUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;
import org.springframework.web.server.WebFilter;
import org.springframework.web.server.WebFilterChain;
import reactor.core.publisher.Mono;

@Slf4j
@Component
@RequiredArgsConstructor
public class AuthFilter implements WebFilter, Ordered {

    private final TokenProvider tokenProvider;


    @Override
    public Mono<Void> filter(ServerWebExchange exchange, WebFilterChain chain) {
        log.info("AuthFilter request start");
        String accessToken = tokenProvider.getToken(exchange);
        RedisUtil.set(accessToken,"zhuwj");
        String userId = RedisUtil.get(accessToken);
        log.info("AuthFilter request end ");
        return chain.filter(exchange);
    }

    @Override
    public int getOrder() {
        return -1;
    }




}
