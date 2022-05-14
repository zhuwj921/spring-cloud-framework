package com.cloud.auth.controller;

import com.cloud.auth.entity.User;
import com.cloud.auth.service.IUserService;
import com.cloud.common.base.PageEntity;
import com.cloud.common.response.ResponseResult;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

/**
 * Description: 用户控制器
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-10
 */

@Slf4j
@RequestMapping("/user")
@RestController
@RequiredArgsConstructor
public class UserController {

    private final IUserService userService;

    @PostMapping
    public ResponseResult<String> create(@RequestBody User user) {
        userService.save(user);
        return ResponseResult.ok("创建成功");
    }

    @PutMapping
    public ResponseResult<String> update(@RequestBody User user) {
        userService.updateById(user);
        return ResponseResult.ok("更新成功");
    }

    /**
     * 页数从0开始
     *
     * @param pageEntity
     * @return
     */
    @PostMapping("page")
    public ResponseResult<String> page(@RequestBody PageEntity<User> pageEntity) {

        return ResponseResult.ok("");
    }
}
