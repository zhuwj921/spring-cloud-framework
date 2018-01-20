package com.cloud.zhuwj.authorization.security;

import com.cloud.zhuwj.authorization.ClientDetailsDO;
import com.cloud.zhuwj.authorization.service.IClientDetailsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.provider.ClientDetails;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.ClientRegistrationException;
import org.springframework.security.oauth2.provider.client.BaseClientDetails;
import org.springframework.stereotype.Service;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: oauth客户端实现
 * @date 2018/1/16.
 */
@Service
public class SecurityClientDetailsServiceImpl implements ClientDetailsService {
    private static final Logger logger = LoggerFactory.getLogger(SecurityClientDetailsServiceImpl.class);
    @Autowired
    private IClientDetailsService clientDetailsService;

    @Override
    public ClientDetails loadClientByClientId(String clientId) throws ClientRegistrationException {
        ClientDetailsDO clientDetailsDO = clientDetailsService.findByClientId(clientId);
        String resourceIds = clientDetailsDO.getResourceIds();
        String scopes = clientDetailsDO.getScope();
        String grantTypes = clientDetailsDO.getAuthorizedGrantTypes();
        String authorities = clientDetailsDO.getAuthorities();
        String redirectUris = clientDetailsDO.getWebServerRedirectUri();
        Integer refreshTokenValiditySeconds = clientDetailsDO.getRefreshTokenValiditySeconds();
        Integer accessTokenValiditySeconds = clientDetailsDO.getAccessTokenValiditySeconds();
        String clientSecret=clientDetailsDO.getClientSecret();
        logger.info("clientDetailsDO  info : "+ clientDetailsDO.toString());
        BaseClientDetails baseClientDetails = new BaseClientDetails(clientId,resourceIds,scopes,grantTypes,authorities,redirectUris);
        baseClientDetails.setRefreshTokenValiditySeconds(refreshTokenValiditySeconds);
        baseClientDetails.setAccessTokenValiditySeconds(accessTokenValiditySeconds);
        baseClientDetails.setClientSecret(clientSecret);
        return baseClientDetails;
    }
}
