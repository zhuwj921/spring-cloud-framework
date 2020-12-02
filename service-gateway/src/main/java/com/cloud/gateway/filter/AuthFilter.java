package com.cloud.gateway.filter;

import cn.hutool.core.util.StrUtil;
import com.cloud.common.auth.TokenProvider;
import com.cloud.common.auth.UserInfo;
import com.cloud.common.constant.GlobalConstant;
import com.cloud.common.exception.AuthException;
import com.cloud.common.utils.RedisUtil;
import com.cloud.gateway.config.AuthProperties;
import com.cloud.gateway.domain.RequestLog;
import com.cloud.gateway.service.RequestLogService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.annotation.Order;
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
@Order(-1)
@Slf4j
@Component
@RequiredArgsConstructor
public class AuthFilter implements WebFilter {

    private final TokenProvider tokenProvider;

    private final AuthProperties authProperties;

    private final RequestLogService requestLogService;


    @Override
    public Mono<Void> filter(ServerWebExchange exchange, WebFilterChain chain) {
        log.info("AuthFilter request start");
        Set<String> ignoreUrlPatterns = authProperties.getIgnoreUrlPatterns();
        String requestUrl = exchange.getRequest().getPath().value();
        //权限认证豁免验证
        for (String urlPatterns : ignoreUrlPatterns) {
            if (new AntPathMatcher().match(urlPatterns, requestUrl)) {
                log(requestUrl, GlobalConstant.ANONYMOUS_USER, GlobalConstant.ANONYMOUS_USER_id);
                return chain.filter(exchange);
            }
        }
        //权限认证校验
        String accessToken = tokenProvider.getToken(exchange);
        if (StrUtil.isBlank(accessToken)) {
            log.warn("AuthFilter accessToken is blank");
            log(requestUrl, GlobalConstant.ANONYMOUS_USER, GlobalConstant.ANONYMOUS_USER_id);
            throw new AuthException("accessToken not exist");
        }
        UserInfo userInfo = RedisUtil.get(accessToken, UserInfo.class);
        if (userInfo == null) {
            log.info("AuthFilter userInfo is null ");
            log(requestUrl, GlobalConstant.ANONYMOUS_USER, GlobalConstant.ANONYMOUS_USER_id);
            throw new AuthException("userInfo not exist");
        }
        log(requestUrl, userInfo.getUsername(), GlobalConstant.ANONYMOUS_USER_id);
        log.info("AuthFilter request end ");
        return chain.filter(exchange);
    }




    private void log(String requestUrl, String username, long userId) {
        RequestLog requestLog = new RequestLog();
        requestLog.init();
        requestLog.setCreateBy(userId);
        requestLog.setModifiedBy(userId);
        requestLog.setRequestUrl(requestUrl);
        requestLog.setRequestUsername(username);
        try {
            requestLogService.create(requestLog);
        } catch (Exception e) {
            log.error("gateway log create error !!!", e);
        }
    }
}
