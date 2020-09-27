package com.cloud.auth.service;

import com.cloud.auth.domain.User;
import com.cloud.common.base.BaseService;

/**
 * @author: zhuwj
 * @date: 2020/9/26 0:18
 * @description:
 */
public interface UserService extends BaseService<User> {

    User findUserByUsername(String username);
}
