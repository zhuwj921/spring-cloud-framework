package com.cloud.common.filter;

import com.cloud.common.auth.UserInfo;
import com.cloud.common.auth.WebContext;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;
import org.springframework.web.server.WebFilter;
import org.springframework.web.server.WebFilterChain;
import reactor.core.publisher.Mono;

@Slf4j
@Component
public class WebContextFilter implements WebFilter, Ordered {


    @Override
    public Mono<Void> filter(ServerWebExchange exchange, WebFilterChain chain) {
        log.info("WebContextFilter");
        UserInfo userInfo = new UserInfo();
        userInfo.setUsername("zhuwj");
        WebContext.setUserInfo(userInfo);
        return chain.filter(exchange);
    }

    @Override
    public int getOrder() {
        return 100;
    }
}
