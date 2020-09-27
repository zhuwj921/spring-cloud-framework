package com.cloud.auth.repository;

import com.cloud.auth.domain.User;
import com.cloud.common.base.BaseRepository;

/**
 * @author: zhuwj
 * @date: 2020/9/26 0:21
 * @description:
 */
public interface UserRepository extends BaseRepository<User> {

    User findUserByUsername(String username);
}
