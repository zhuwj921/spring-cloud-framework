package com.cloud.zhuwj.common.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.oauth2.client.DefaultOAuth2RequestAuthenticator;
import org.springframework.security.oauth2.client.OAuth2ClientContext;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;
import org.springframework.security.oauth2.client.resource.OAuth2ProtectedResourceDetails;
import org.springframework.security.oauth2.client.token.grant.client.ClientCredentialsResourceDetails;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: TODO
 * @date 2018/4/1.
 */
@Configuration
public class OAuth2RestTemplateConfiguration {
    @Bean
    public OAuth2RestTemplate oauth2RestTemplate() {
        ClientCredentialsResourceDetails resourceDetails = new ClientCredentialsResourceDetails();
        resourceDetails.setClientId("webapp");
        resourceDetails.setClientSecret("webapp");
        resourceDetails.setId("service-user");
        resourceDetails.setAccessTokenUri("http://127.0.0.1:9020/oauth/token");
        OAuth2RestTemplate oAuth2RestTemplate = new OAuth2RestTemplate(resourceDetails);
        oAuth2RestTemplate.setAuthenticator(new DefaultOAuth2RequestAuthenticator());
        return oAuth2RestTemplate;
    }
}
