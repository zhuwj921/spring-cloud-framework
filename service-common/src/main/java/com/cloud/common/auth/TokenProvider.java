package com.cloud.common.auth;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ArrayUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.cloud.common.constant.GlobalConstant;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.Map;

/**
 * @author: zhuwj
 * @date: 2020/9/22 22:53
 * @description: token 创建 解析 获取
 */
public class TokenProvider {

    private static final int EXPIRES_AT = 120;//分钟
    private static final String AUDIENCE = "web";
    private static final String KEY = "JldM90LCIQNZ3cQXrER3Jqyq3bkXttLNNVaTsc1TaEPQ9p1gZM8Z0TtvZL88S0bb";
    /**
     * 获取token
     *
     * @param request
     * @return
     */
    public static String getToken(HttpServletRequest request) {
        String bearerToken = request.getHeader(GlobalConstant.HEADER);
        if (StrUtil.isBlank(bearerToken)) {
            Map<String, String[]> queryParams = request.getParameterMap();
            String[] bearerTokens = queryParams.get(GlobalConstant.TOKEN_NAME);
            if (ArrayUtil.isNotEmpty(bearerTokens)) {
                bearerToken = bearerTokens[0];
            }
        }
        String accessToken = resolveToken(bearerToken);
        return accessToken;
    }

    /**
     * 创建token 使用jwt方式 可以
     *
     * @return
     */
    public static String createToken(String username)  {
        Date date = DateUtil.offsetMinute(new Date(), EXPIRES_AT);
        return JWT.create()
                .withExpiresAt(date)
                .withNotBefore(new Date())
                .withSubject(username)
                .withAudience(AUDIENCE)
                .withJWTId(IdUtil.randomUUID())
                .sign(Algorithm.HMAC256(KEY));
    }

    /**
     * 获取去除前缀的token
     *
     * @param bearerToken
     * @return
     */
    private static String resolveToken(String bearerToken) {
        if (StrUtil.isNotBlank(bearerToken) && bearerToken.startsWith(GlobalConstant.TOKEN_PREFIX)) {
            return StrUtil.removePrefix(bearerToken, GlobalConstant.TOKEN_PREFIX).trim();
        }
        return null;
    }
}
