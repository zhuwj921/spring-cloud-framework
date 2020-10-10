package com.cloud.common.auth;

import org.springframework.web.server.ServerWebExchange;

/**
 * 上下文信息
 *
 * @author zhuwj
 */
public class WebContext {

    private static ThreadLocal<UserInfo> threadLocal = new ThreadLocal<>();

    private static ThreadLocal<ServerWebExchange> threadLocalWebExchange = new ThreadLocal<>();


    public static void setUserInfo(UserInfo userInfo) {
        threadLocal.set(userInfo);
    }


    public static UserInfo getUserInfo() {
        return threadLocal.get();
    }

    public static void removeUserInfo() {
        threadLocal.remove();
    }


    public static void setServerWebExchange(ServerWebExchange webExchange) {
        threadLocalWebExchange.set(webExchange);
    }


    public static ServerWebExchange getServerWebExchange() {
        return threadLocalWebExchange.get();
    }

    public static void removeServerWebExchange() {
        threadLocalWebExchange.remove();
    }


    /**
     * 获取用户名称
     *
     * @return
     */
    public static String getUsername() {
        UserInfo userInfo = getUserInfo();
        return userInfo == null ? null : userInfo.getUsername();
    }

    /**
     * 获取用户id
     *
     * @return
     */
    public static Long getUserId() {
        UserInfo userInfo = getUserInfo();
        return userInfo == null ? null : userInfo.getUserId();
    }

    public static String getPath() {
        if(getServerWebExchange() == null){
            return null;
        }
        String requestUrl = getServerWebExchange().getRequest().getPath().value();
        return requestUrl;
    }

    public static String requestId() {
        if(getServerWebExchange() == null){
            return null;
        }
        return getServerWebExchange().getRequest().getId();
    }
}
