package com.cloud.auth.service.impl;

import com.cloud.auth.domain.User;
import com.cloud.auth.repository.UserRepository;
import com.cloud.auth.service.UserService;
import com.cloud.common.base.BaseServiceImpl;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

/**
 * @author: zhuwj
 * @date: 2020/9/26 0:18
 * @description:
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

    private final UserRepository userRepository;

    @Override
    public User findUserByUsername(String username) {
        return userRepository.findUserByUsername(username);
    }
}
