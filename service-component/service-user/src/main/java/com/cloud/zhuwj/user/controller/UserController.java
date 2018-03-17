package com.cloud.zhuwj.user.controller;

import com.cloud.zhuwj.common.base.BaseController;
import com.cloud.zhuwj.common.reponse.Result;
import com.cloud.zhuwj.user.domain.UserDO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: 用户服务验证
 * @date 2018/1/21.
 */
@RequestMapping(value = "/user", produces = {"application/json;charset=UTF-8"})
@RestController
public class UserController extends BaseController {
    @GetMapping("/test")
    public Result<String> test() {
        try {
            String username= getUsername();
            return Result.ok("hello world"+username);
        } catch (Exception e) {
            return Result.error("账号信息 分页查询失败");
        }
    }

    @GetMapping("/findByUsername")
    public Result<UserDO> test(String username) {
            UserDO userDO =new UserDO();
            userDO.setUsername("sysadmin");
            userDO.setEnabled(true);
            return Result.ok(userDO);
    }
}
