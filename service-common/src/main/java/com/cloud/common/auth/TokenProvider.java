package com.cloud.common.auth;

import cn.hutool.core.codec.Base64;
import cn.hutool.core.util.ArrayUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.SecureUtil;
import com.cloud.common.constant.GlobalConstant;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @author: zhuwj
 * @date: 2020/9/22 22:53
 * @description: token 创建 解析 获取
 */
public class TokenProvider {

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
     * 创建token 自定义创建方式
     *
     * @return
     */
    public static String createToken() {
        String md5 = SecureUtil.md5(IdUtil.randomUUID());
        return Base64.encode(md5);
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
