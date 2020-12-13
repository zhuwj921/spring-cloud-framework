package com.cloud.common.filter;

import com.cloud.common.auth.TokenProvider;
import com.cloud.common.auth.UserInfo;
import com.cloud.common.auth.WebContext;
import com.cloud.common.utils.RedisUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.annotation.Order;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * @author zhuwj
 */
@Order(1)
@Slf4j
@WebFilter
@RequiredArgsConstructor
public class WebContextFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        log.debug("WebContextFilter start.");
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        String accessToken = TokenProvider.getToken(request);
        UserInfo userInfo = RedisUtil.get(accessToken, UserInfo.class);
        filterChain.doFilter(request, servletResponse);
    }
}
