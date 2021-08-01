package com.cloud.common.auth;

import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONUtil;
import com.cloud.common.constant.GlobalConstant;
import com.cloud.common.exception.AuthException;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * 上下文信息
 *
 * @author zhuwj
 */
public class WebContext {

    /**
     * 获取用户信息
     *
     * @return
     */
    public static UserInfo getUserInfo() {
        String userInfo = getHeaderInfoByKey(GlobalConstant.HEADER_USER);
        if (StrUtil.isBlank(userInfo)) {
            throw new AuthException("user is not exist");
        }
        return JSONUtil.toBean(userInfo, UserInfo.class);
    }


    /**
     * 获取用户名称
     *
     * @return
     */
    public static String getUsername() {
        UserInfo userInfo = getUserInfo();
        return userInfo.getUsername();
    }

    /**
     * 获取用户id
     *
     * @return
     */
    public static Long getUserId() {
        UserInfo userInfo = getUserInfo();
        return userInfo.getUserId();
    }

    /**
     * 获取请求id
     *
     * @return
     */
    public static String getRequestId() {
        return getHeaderInfoByKey(GlobalConstant.REQUEST_ID);
    }

    /**
     * 获取请求路径
     *
     * @return
     */
    public static String getRequestPath() {
        return getHeaderInfoByKey(GlobalConstant.REQUEST_PATH);
    }

    /**
     * 获取头部信息信息通过key值
     *
     * @param key
     * @return
     */
    private static String getHeaderInfoByKey(String key) {
        ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attrs.getRequest();
        return request.getHeader(key);
    }
}
