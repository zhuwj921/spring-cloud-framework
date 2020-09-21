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
}
