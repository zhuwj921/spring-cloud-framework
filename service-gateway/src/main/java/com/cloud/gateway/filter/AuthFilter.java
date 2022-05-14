package com.cloud.gateway.filter;

import cn.hutool.core.util.StrUtil;
import cn.hutool.http.HttpUtil;
import cn.hutool.json.JSONUtil;
import com.cloud.common.auth.UserInfo;
import com.cloud.common.constant.GlobalConstant;
import com.cloud.common.exception.AuthException;
import com.cloud.common.utils.RedisUtil;
import com.cloud.gateway.config.AuthProperties;
import com.cloud.gateway.entity.RequestLog;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpHeaders;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.server.ServerWebExchange;
import org.springframework.web.server.WebFilter;
import org.springframework.web.server.WebFilterChain;
import reactor.core.publisher.Mono;

import java.net.URI;
import java.nio.charset.Charset;
import java.time.LocalDateTime;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;

/**
 * @description: 权限过滤器 进行权限校验
 * @author: zhuwj
 * @create: 2020-09-21 14:37
 **/
@Order(-1)
@Slf4j
@Component
@RequiredArgsConstructor
public class AuthFilter implements WebFilter {

    private final AuthProperties authProperties;



    @Override
    public Mono<Void> filter(ServerWebExchange exchange, WebFilterChain chain) {
        log.debug("AuthFilter request start");
        Set<String> ignoreUrlPatterns = authProperties.getIgnoreUrlPatterns();
        String requestUrl = exchange.getRequest().getPath().value();
        //权限认证豁免验证
        for (String urlPatterns : ignoreUrlPatterns) {
            if (new AntPathMatcher().match(urlPatterns, requestUrl)) {
                log(requestUrl, GlobalConstant.ANONYMOUS_USER, GlobalConstant.ANONYMOUS_USER_ID);
                Consumer<HttpHeaders> httpHeaders = httpHeader -> {
                    httpHeader.set(GlobalConstant.REQUEST_ID, exchange.getRequest().getId());
                    httpHeader.set(GlobalConstant.REQUEST_PATH, exchange.getRequest().getPath().value());
                };
                ServerHttpRequest serverHttpRequest = exchange.getRequest().mutate().headers(httpHeaders).build();
                exchange.mutate().request(serverHttpRequest).build();
                return chain.filter(exchange);
            }
        }
        //权限认证校验
        String accessToken = getToken(exchange);
        if (StrUtil.isBlank(accessToken)) {
            log.warn("AuthFilter accessToken is blank");
            log(requestUrl, GlobalConstant.ANONYMOUS_USER, GlobalConstant.ANONYMOUS_USER_ID);
            throw new AuthException("accessToken not exist");
        }
        UserInfo userInfo = RedisUtil.get(accessToken, UserInfo.class);
        if (userInfo == null) {
            log.info("AuthFilter userInfo is null ");
            log(requestUrl, GlobalConstant.ANONYMOUS_USER, GlobalConstant.ANONYMOUS_USER_ID);
            throw new AuthException("userInfo not exist");
        }
        log(requestUrl, userInfo.getUsername(), GlobalConstant.ANONYMOUS_USER_ID);
        Consumer<HttpHeaders> httpHeaders = httpHeader -> {
            httpHeader.set(GlobalConstant.HEADER_USER, JSONUtil.toJsonStr(userInfo));
            httpHeader.set(GlobalConstant.REQUEST_ID, exchange.getRequest().getId());
            httpHeader.set(GlobalConstant.REQUEST_PATH, exchange.getRequest().getPath().value());
        };
        ServerHttpRequest serverHttpRequest = exchange.getRequest().mutate().headers(httpHeaders).build();
        exchange.mutate().request(serverHttpRequest).build();
        log.debug("AuthFilter request end ");
        return chain.filter(exchange);
    }


    private void log(String requestUrl, String username, long userId) {
        RequestLog requestLog = new RequestLog();
        requestLog.setCreateTime(LocalDateTime.now());
        requestLog.setModifiedTime(LocalDateTime.now());
        requestLog.setCreateBy(userId);
        requestLog.setModifiedBy(userId);
        requestLog.setRequestUrl(requestUrl);
        requestLog.setRequestUsername(username);
        requestLog.setDeleted(Boolean.FALSE);
        requestLog.setVersion(0);
        try {
          //  requestLogService.create(requestLog);
        } catch (Exception e) {
            log.error("gateway log create error !!!", e);
        }
    }

    private String getToken(ServerWebExchange exchange) {
        ServerHttpRequest request = exchange.getRequest();
        HttpHeaders httpHeaders = request.getHeaders();
        String bearerToken = httpHeaders.getFirst(GlobalConstant.HEADER);
        if (StrUtil.isBlank(bearerToken)) {
            URI uri = request.getURI();
            String queryParams = uri.getQuery();
            Map<String, String> mapQueryParams = HttpUtil.decodeParamMap(queryParams, Charset.defaultCharset());
            bearerToken = mapQueryParams.get(GlobalConstant.TOKEN_NAME);
        }
        String accessToken = resolveToken(bearerToken);
        return accessToken;
    }

    /**
     * 获取去除前缀的token
     *
     * @param bearerToken
     * @return
     */
    private String resolveToken(String bearerToken) {
        if (StrUtil.isNotBlank(bearerToken) && bearerToken.startsWith(GlobalConstant.TOKEN_PREFIX)) {
            return StrUtil.removePrefix(bearerToken, GlobalConstant.TOKEN_PREFIX).trim();
        }
        return null;
    }
}
