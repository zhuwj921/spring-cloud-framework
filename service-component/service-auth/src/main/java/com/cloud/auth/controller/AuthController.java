package com.cloud.auth.controller;

import cn.hutool.core.bean.BeanUtil;
import com.cloud.auth.entity.User;
import com.cloud.auth.facade.MessageFeignService;
import com.cloud.auth.service.IUserService;
import com.cloud.common.auth.TokenProvider;
import com.cloud.common.auth.UserInfo;
import com.cloud.common.auth.WebContext;
import com.cloud.common.response.ResponseResult;
import com.cloud.common.utils.PasswordUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * @author zhuwj
 */
@Api(tags = "权限服务接口")
@Slf4j
@RequestMapping("/auth")
@RestController
@RequiredArgsConstructor
public class AuthController {

    private final IUserService userService;

    private final MessageFeignService messageFeignService;

    @ApiOperation(value = "获取访问token")
    @PostMapping("token")
    public ResponseResult<String> token(@RequestBody @Valid User user) {
        String username = user.getUsername();
        String password = user.getPassword();
        User queryResult = userService.lambdaQuery().eq(User::getUsername, username).one();
        if (queryResult == null) {
            return ResponseResult.error("账号不存在!");
        }
        boolean isSuccess = PasswordUtil.verifyPassword(username, password, queryResult.getPassword());
        if (!isSuccess) {
            return ResponseResult.error("账号或密码错误!");
        }
        String accessToken = TokenProvider.createToken(username);
        //cache user info
        UserInfo userInfo = new UserInfo();
        BeanUtil.copyProperties(queryResult, userInfo);
        userInfo.setUserId(queryResult.getId());
        //RedisUtil.set(accessToken, userInfo, GlobalConstant.REDIS_USER_TIME);
        return ResponseResult.ok(accessToken);
    }

    @ApiOperation(value = "获取用户信息")
    @GetMapping("userInfo")
    public ResponseResult<UserInfo> getUserInfo() {
        return ResponseResult.ok(WebContext.getUserInfo());
    }

    @ApiOperation(value = "获取版本信息")
    @GetMapping("version")
    public ResponseResult<String> getVersion() {
        return ResponseResult.ok(messageFeignService.getVersion());
    }


}
