package com.cloud.common.utils;

import org.junit.jupiter.api.Test;

/**
 * @author: zhuwj
 * @date: 2020/9/26 0:14
 * @description:
 */
public class PasswordUtilTest {

    @Test
    public void test() {
        String oldPassword = PasswordUtil.generatePassword("sysadmin", "123456789");
        System.out.println(oldPassword);
        System.out.println(PasswordUtil.verifyPassword("sysadmin", "123456789",oldPassword));
    }


}
