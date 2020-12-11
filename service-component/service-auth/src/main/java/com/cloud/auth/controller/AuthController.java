package com.cloud.auth.controller;

import cn.hutool.core.bean.BeanUtil;
import com.cloud.auth.domain.User;
import com.cloud.auth.service.UserService;
import com.cloud.common.auth.TokenProvider;
import com.cloud.common.auth.UserInfo;
import com.cloud.common.auth.WebContext;
import com.cloud.common.constant.GlobalConstant;
import com.cloud.common.response.ResponseResult;
import com.cloud.common.utils.PasswordUtil;
import com.cloud.common.utils.RedisUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * @author zhuwj
 */
@Slf4j
@RequestMapping("/auth")
@RestController
@RequiredArgsConstructor
public class AuthController {

    private final UserService userService;

    @PostMapping("token")
    public ResponseResult token(@RequestBody @Valid User user) {
        String username = user.getUsername();
        String password = user.getPassword();
        User queryResult = userService.findUserByUsername(username);
        if (queryResult == null) {
            return ResponseResult.error("账号不存在!");
        }
        boolean isSuccess = PasswordUtil.verifyPassword(username, password, queryResult.getPassword());
        if (!isSuccess) {
            return ResponseResult.error("账号或密码错误!");
        }
        String accessToken = TokenProvider.createToken();
        //cache user info
        UserInfo userInfo = new UserInfo();
        BeanUtil.copyProperties(queryResult, userInfo);
        userInfo.setUserId(queryResult.getId());
        RedisUtil.set(accessToken, userInfo, GlobalConstant.REDIS_USER_TIME);
        return ResponseResult.ok(accessToken);
    }


    @GetMapping("userInfo")
    public ResponseResult<UserInfo> getUserInfo() {
        return ResponseResult.ok(WebContext.getUserInfo());
    }

}
