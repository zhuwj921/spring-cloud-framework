package com.cloud.common.constant;

/**
 * @author: zhuwj
 * @date: 2020/9/22 22:47
 * @description: 全局常量
 */
public interface GlobalConstant {
    /**
     * 请求授权头部信息
     */
    String HEADER = "Authorization";
    /**
     * 请求token前缀
     */
    String TOKEN_PREFIX = "Bearer";
    /**
     * token 名称
     */
    String TOKEN_NAME = "accessToken";
    /**
     * 匿名用户
     */
    String ANONYMOUS_USER = "anonymousUser";
}
