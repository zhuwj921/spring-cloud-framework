package com.cloud.zhuwj.common.config;

import com.cloud.zhuwj.common.utils.WebContextUtil;
import feign.RequestInterceptor;
import feign.RequestTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;


/**
 * Created by zhuwj on 2018/1/18.
 * 用于解决fegin无法传递授权信息
 */
@Configuration
public class RequestInterceptorConfig implements RequestInterceptor {
    private final Logger logger = LoggerFactory.getLogger(getClass());

    private static final String AUTHORIZATION_HEADER = "Authorization";

    private static final String BEARER_TOKEN_TYPE = "Bearer";

    @Autowired
    private OAuth2RestTemplate oAuth2RestTemplate;

    @Override
    public void apply(RequestTemplate requestTemplate) {
        String accessToken = WebContextUtil.getAccessToken();
        if(accessToken == null){
            accessToken =oAuth2RestTemplate.getAccessToken().getValue();
        }
        logger.debug("RequestInterceptorConfig accessToken :" +accessToken);
        requestTemplate.header(AUTHORIZATION_HEADER,
                String.format("%s %s",
                        BEARER_TOKEN_TYPE,
                        accessToken));
    }
}
