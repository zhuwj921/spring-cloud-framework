package com.cloud.zhuwj.authorization.controller;


import com.cloud.zhuwj.common.base.BaseController;
import com.cloud.zhuwj.common.reponse.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.common.exceptions.InvalidGrantException;
import org.springframework.security.oauth2.provider.endpoint.TokenEndpoint;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;
import java.util.HashSet;
import java.util.Map;

/**
 * Created by zhuwj on 2018/1/24.
 */
@Api( description = "登入接口")
@RestController
public class LoginController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
    @Autowired
    private TokenEndpoint tokenEndpoint;
    @Autowired
    @Qualifier("consumerTokenServices")
    private ConsumerTokenServices consumerTokenServices;

    @ApiOperation(value = "pc端登入接口", notes = "pc端登入接口")
    @PostMapping("/login")
    public Result<OAuth2AccessToken> login(@RequestParam Map<String, String> parameters){
        try {
            logger.info("login  start ......");
            parameters.put("grant_type","password");//设置授权类型为密码模式
            Collection<GrantedAuthority> grantedAuthorities = new HashSet<>();
            grantedAuthorities.add(new SimpleGrantedAuthority("admin"));//此处不能为空
            Authentication authentication = new UsernamePasswordAuthenticationToken("webapp", "webapp",grantedAuthorities);
            ResponseEntity<OAuth2AccessToken> responseEntity= tokenEndpoint.postAccessToken(authentication ,parameters);
            logger.info("login  end ......");
            return  Result.ok(responseEntity.getBody());
        }catch (InvalidGrantException e){
            logger.error("login error  用户名密码不正确 ....",e);
            return Result.error("用户名密码不正确");
        }
        catch (Exception e){
            logger.error("login error ....",e);
            return Result.error(e.getMessage());
        }
    }


    @ApiOperation(value = "登出接口", notes = "登出接口")
    @GetMapping("/logouting")
    public Result<String> logouting(String accessToken){
        try {
            logger.info("logout  start ......");
            consumerTokenServices.revokeToken(accessToken);
            logger.info("logout  end ......");
            return Result.ok("退出登入成功");
        }
        catch (Exception e){
            logger.error("logout error ....",e);
            return Result.error(e.getMessage());
        }
    }


}
