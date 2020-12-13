package com.cloud.common.auth;

import cn.hutool.core.lang.Assert;
import cn.hutool.json.JSONUtil;
import com.cloud.common.constant.GlobalConstant;
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
     * @return
     */
    public static UserInfo getUserInfo() {
        ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attrs.getRequest();
        String userInfo = request.getHeader(GlobalConstant.HEADER_USER);
        Assert.notBlank(userInfo,"user info is not exist");
        return JSONUtil.toBean(userInfo,UserInfo.class);
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


}
