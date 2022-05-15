package com.cloud.auth.controller;

import com.cloud.auth.entity.User;
import com.cloud.common.constant.GlobalConstant;
import com.cloud.common.utils.PasswordUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.time.LocalDateTime;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserControllerTest {

    @Autowired
    private UserController userController;

    @Test
    public void create() {
        User user = new User();
        user.init(GlobalConstant.ANONYMOUS_USER_ID);
        user.setGender(0);
        user.setEmail("774623096@qq.com");
        user.setNickName("sysadmin");
        user.setPhone("123456789");
        user.setLastLoginTime(LocalDateTime.now());
        user.setUsername("sysadmin");
        user.setPassword(PasswordUtil.generatePassword(user.getUsername(), "123456789"));
        userController.create(user);
    }

}
