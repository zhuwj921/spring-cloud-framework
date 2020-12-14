package com.cloud.common.auth;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.IdUtil;
import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;

import java.util.Date;

/**
 * @author: zhuwj
 * @date: 2020/9/22 22:53
 * @description: token 创建 解析 获取
 */
public class TokenProvider {

    private static final int EXPIRES_AT = 120;
    private static final String AUDIENCE = "web";
    private static final String KEY = "JldM90LCIQNZ3cQXrER3Jqyq3bkXttLNNVaTsc1TaEPQ9p1gZM8Z0TtvZL88S0bb";


    /**
     * 创建token 使用jwt方式
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

}
