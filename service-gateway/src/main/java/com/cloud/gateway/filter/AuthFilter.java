package com.cloud.gateway.filter;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.http.HttpUtil;
import com.cloud.gateway.config.AuthProperties;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cloud.gateway.filter.GatewayFilterChain;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.core.Ordered;
import org.springframework.http.HttpHeaders;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;
import org.springframework.web.server.WebFilter;
import org.springframework.web.server.WebFilterChain;
import reactor.core.publisher.Mono;

import java.net.URI;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;

@Slf4j
@Component
@RequiredArgsConstructor
public class AuthFilter implements WebFilter, Ordered {

    private final AuthProperties authProperties;

    @Override
    public Mono<Void> filter(ServerWebExchange exchange, WebFilterChain chain) {
        log.info("AuthFilter request start");
        ServerHttpRequest request = exchange.getRequest();
        String bearerToken = null;
        HttpHeaders httpHeaders = request.getHeaders();
        List<String> authorizationList = httpHeaders.get(authProperties.getHeader());
        if (CollUtil.isNotEmpty(authorizationList)) {
            bearerToken = authorizationList.get(0);
        }
        if (StrUtil.isBlank(bearerToken)) {
            URI uri = request.getURI();
            String queryParams = uri.getQuery();
            Map<String, String> mapQueryParams = HttpUtil.decodeParamMap(queryParams, Charset.defaultCharset());
            bearerToken = mapQueryParams.get(authProperties.getTokenName());
        }
        String accessToken = resolveToken(bearerToken);
        log.info("AuthFilter request end ");
        return chain.filter(exchange);
    }

    @Override
    public int getOrder() {
        return -1;
    }

    /**
     * 获取去除前缀的token
     *
     * @param bearerToken
     * @return
     */
    private String resolveToken(String bearerToken) {
        if (StrUtil.isNotBlank(bearerToken) && bearerToken.startsWith(authProperties.getTokenPrefix())) {
            return bearerToken.replace(authProperties.getTokenPrefix(), "").trim();
        }
        return null;
    }

 
}
