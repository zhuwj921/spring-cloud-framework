package com.cloud.auth.controller;

import com.cloud.auth.entity.User;
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
        user.setId(1l);
        user.setCreateBy(1l);
        user.setCreateTime(LocalDateTime.now());
        user.setModifiedBy(1l);
        user.setModifiedTime(LocalDateTime.now());
        user.setGender(0);
        user.setEmail("774623096@qq.com");
        user.setNickName("sysadmin");
        user.setPhone("123456789");
        user.setDeleted(false);
        user.setVersion(0);
        user.setLastLoginTime(LocalDateTime.now());
        user.setUsername("sysadmin");
        user.setPassword(PasswordUtil.generatePassword(user.getUsername(),"123456789"));
        userController.create(user);
    }

}
