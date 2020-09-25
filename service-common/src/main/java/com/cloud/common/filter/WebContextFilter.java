package com.cloud.common.filter;

import com.cloud.common.auth.TokenProvider;
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
public class WebContextFilter implements WebFilter, Ordered {

    private final TokenProvider tokenProvider;

    @Override
    public Mono<Void> filter(ServerWebExchange exchange, WebFilterChain chain) {
        log.info("WebContextFilter start.");
        String accessToken = tokenProvider.getToken(exchange);
        return chain.filter(exchange);
    }

    @Override
    public int getOrder() {
        return 100;
    }
}
