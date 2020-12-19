package com.cloud.auth.service;

import com.cloud.auth.domain.User;
import com.cloud.common.base.BaseService;

/**
 * @author: zhuwj
 * @date: 2020/9/26 0:18
 * @description:
 */
public interface UserService extends BaseService<User> {
    /**
     * 查询通过用户名称
     * @param username
     * @return
     */
    User findUserByUsername(String username);
}
