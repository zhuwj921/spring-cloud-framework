package com.cloud.auth.controller;

import cn.hutool.core.util.StrUtil;
import com.cloud.auth.domain.Account;
import com.cloud.auth.service.AccountService;
import com.cloud.common.auth.TokenProvider;
import com.cloud.common.response.ResponseResult;
import com.cloud.common.utils.PasswordUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RequestMapping("/auth")
@RestController
@RequiredArgsConstructor
public class AuthController {

    private final TokenProvider tokenProvider;

    private final AccountService accountService;

    @PostMapping("token")
    public ResponseResult<String> token(@RequestBody Account account) {
        String username = account.getUsername();
        String password = account.getPassword();
        if (StrUtil.isBlank(username) || StrUtil.isBlank(password)) {
            return ResponseResult.error("账号或密码不能为空!");
        }
        Account queryResult = accountService.findAccountByUsername(username);
        if (queryResult == null) {
            return ResponseResult.error("账号不存在!");
        }

        boolean isSuccess = PasswordUtil.verifyPassword(username, password, queryResult.getPassword());
        if (!isSuccess) {
            return ResponseResult.error("账号或密码错误!");
        }
        String accessToken = tokenProvider.createToken();
        return ResponseResult.ok(accessToken);
    }
}
