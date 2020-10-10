package com.cloud.auth.controller;

import com.cloud.auth.domain.User;
import com.cloud.auth.service.UserService;
import com.cloud.common.base.PageEntity;
import com.cloud.common.response.ResponseResult;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.*;
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

    private final UserService userService;

    @PostMapping
    public ResponseResult<String> create(@RequestBody User user) {
        userService.create(user);
        return ResponseResult.ok("创建成功");
    }

    @PutMapping
    public ResponseResult<String> update(@RequestBody User user) {
        userService.update(user);
        return ResponseResult.ok("更新成功");
    }

    /**
     * 页数从0开始
     * @param pageEntity
     * @return
     */
    @PostMapping("page")
    public ResponseResult<Page<User>> page(@RequestBody PageEntity<User> pageEntity) {
        Sort sort = Sort.by("id").descending();
        Pageable pageable = PageRequest.of(pageEntity.getPage() - 1, pageEntity.getSize(),sort);
        ExampleMatcher matcher = ExampleMatcher.matching()
                .withMatcher("username", ExampleMatcher.GenericPropertyMatchers.contains());
        Example<User> example = Example.of(pageEntity.getQueryData(), matcher);
        Page<User> page = userService.page(pageable, example);
        return ResponseResult.ok(page);
    }
}
