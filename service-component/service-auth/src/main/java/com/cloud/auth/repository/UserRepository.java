package com.cloud.auth.repository;

import com.cloud.auth.domain.User;
import com.cloud.common.base.BaseRepository;

/**
 * @author: zhuwj
 * @date: 2020/9/26 0:21
 * @description:
 */
public interface UserRepository extends BaseRepository<User> {
    /**
     * 查询通过用户名称
     * @param username
     * @return
     */
    User findUserByUsername(String username);
}
