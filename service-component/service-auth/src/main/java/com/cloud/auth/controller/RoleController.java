package com.cloud.auth.controller;

import com.cloud.auth.entity.Role;
import com.cloud.auth.service.IRoleService;
import com.cloud.common.response.ResponseResult;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

/**
 * Description: TODO
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-10
 */
@Slf4j
@RequestMapping("/role")
@RestController
@RequiredArgsConstructor
public class RoleController {

    private final IRoleService roleService;

    @PostMapping
    public ResponseResult<String> create(@RequestBody Role role) {
        roleService.save(role);
        return ResponseResult.ok("创建成功");
    }

    @PutMapping
    public ResponseResult<String> update(@RequestBody Role role) {
        roleService.updateById(role);
        return ResponseResult.ok("更新成功");
    }

}
