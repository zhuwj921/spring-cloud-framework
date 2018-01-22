package com.cloud.zhuwj.authorization.controller;

import com.cloud.zhuwj.authorization.fegin.IUserFeginService;
import com.cloud.zhuwj.common.base.BaseController;
import com.cloud.zhuwj.common.exception.BuessionException;
import com.cloud.zhuwj.common.reponse.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

/**
 * Created by zhuwj on 2018/1/17.
 * 服务之间调用验证用户信息接口
 */
@RestController
public class UserAuthController extends BaseController {

    @Autowired
    private IUserFeginService userFeginService;

    /**
     * 各个服务获取验证授权用户信息的接口
     * @param user
     * @return
     */
    @GetMapping("/userinfo")
    public Principal user(Principal user){
        return user;
    }

    @GetMapping("/test")
    public ResponseResult<String> test(){
        return userFeginService.test();
    }

    @GetMapping("/noAuth")
    @ResponseBody
    public ResponseResult<String> noAuth(){
        return ResponseResult.error("sadasdasd");
       // int x = 1/0;
     //   throw  new BuessionException(1,"测试统一异常处理");
    }
}
