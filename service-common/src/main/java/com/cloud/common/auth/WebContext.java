package com.cloud.common.auth;

public class WebContext {

    private static ThreadLocal<UserInfo> threadLocal = new ThreadLocal<>();


    public static void setUserInfo(UserInfo userInfo) {
        threadLocal.set(userInfo);
    }


    public static UserInfo getUserInfo() {
        return threadLocal.get();
    }

    public static void removeUserInfo() {
        threadLocal.remove();
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
}
