package com.cloud.zhuwj.user.controller;

import com.cloud.zhuwj.common.base.BaseController;
import com.cloud.zhuwj.common.reponse.ResponseResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: 用户服务验证
 * @date 2018/1/21.
 */
@RequestMapping(value = "/userinfo", produces = {"application/json;charset=UTF-8"})
@RestController
public class UserController extends BaseController {
    @GetMapping("/test")
    public ResponseResult<String> test() {
        try {
            String username= getUsername();
            return ResponseResult.ok("hello world"+username);
        } catch (Exception e) {
            return ResponseResult.error("账号信息 分页查询失败");
        }
    }
}
