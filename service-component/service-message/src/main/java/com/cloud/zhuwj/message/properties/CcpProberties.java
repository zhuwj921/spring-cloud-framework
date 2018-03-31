package com.cloud.zhuwj.message.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @author zhuwj
 * @Description: 短信配置属性
 * @date 2018/3/28 18:10
 */
@ConfigurationProperties(
        prefix = "ccp"
)
@Component
public class CcpProberties {

    private static String serverIp;

    private static String serverPort;

    private static String accountSid;

    private static String accountToken;

    private static String appId;

    public static String getServerIp() {
        return serverIp;
    }

    public static void setServerIp(String serverIp) {
        CcpProberties.serverIp = serverIp;
    }

    public static String getServerPort() {
        return serverPort;
    }

    public static void setServerPort(String serverPort) {
        CcpProberties.serverPort = serverPort;
    }

    public static String getAccountSid() {
        return accountSid;
    }

    public static void setAccountSid(String accountSid) {
        CcpProberties.accountSid = accountSid;
    }

    public static String getAccountToken() {
        return accountToken;
    }

    public static void setAccountToken(String accountToken) {
        CcpProberties.accountToken = accountToken;
    }

    public static String getAppId() {
        return appId;
    }

    public static void setAppId(String appId) {
        CcpProberties.appId = appId;
    }
}
