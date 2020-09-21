package com.cloud.auth.controller;

import com.cloud.common.auth.WebContext;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RequestMapping("/auth")
@RestController
public class AuthController {

    @GetMapping("test")
    public String test(){
        log.info("sss");
        return WebContext.getUserInfo().getUsername();
    }
}
