package com.cloud.zhuwj.common.utils;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.provider.authentication.OAuth2AuthenticationDetails;

/**
 * Created by zhuwj on 2018/1/18.
 *  获取当前上下文请求信息
 */
public final class WebContextUtil {

    /**
     * 获取当前上下文授权信息
     * @return
     */
    public static Authentication getAuthentication() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            return authentication;
        }
        throw  new AuthenticationServiceException("authentication not found");
    }

    /**
     * 获取当前上下文token的信息
     * @return
     */
    public static OAuth2AuthenticationDetails getDetails(){
        Authentication authentication = getAuthentication();
        if(authentication == null){
            return null;
        }
        OAuth2AuthenticationDetails details = (OAuth2AuthenticationDetails) authentication.getDetails();
       return details;
    }

    /**
     * 获取当前登入用户账号
     * @return
     */
    public static String getUsername(){
        return getAuthentication().getName();
    }

    /**
     *  获取当前登入用户的访问accessToken
     * @return
     */
    public static String getAccessToken(){
        if(getDetails() == null){
            return null;
        }
        return getDetails().getTokenValue();
    }
}
