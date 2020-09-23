package com.cloud.common.auth;

import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.http.HttpUtil;
import com.cloud.common.constant.GlobalConstant;
import org.springframework.http.HttpHeaders;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;

import java.net.URI;
import java.nio.charset.Charset;
import java.util.Map;

/**
 * @author: zhuwj
 * @date: 2020/9/22 22:53
 * @description: token 创建 解析 获取
 */
@Component
public class TokenProvider {

    /**
     * 获取token
     *
     * @param exchange
     * @return
     */
    public String getToken(ServerWebExchange exchange) {
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
     * 创建token
     *
     * @return
     */
    public String createToken() {
        return IdUtil.simpleUUID();
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
