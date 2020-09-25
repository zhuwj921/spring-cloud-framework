package com.cloud.common.utils;

import cn.hutool.crypto.SecureUtil;

/**
 * @author: zhuwj
 * @date: 2020/9/26 0:05
 * @description:
 */
public class PasswordUtil {

    /**
     * 生成密码 根据用户名称和密码
     *
     * @param username
     * @param password
     * @return
     */
    public static String generatePassword(String username, String password) {
        return SecureUtil.md5(username + password);
    }

    /**
     * 校验密码
     *
     * @param username
     * @param password
     * @param oldPassword
     * @return
     */
    public static boolean verifyPassword(String username, String password, String oldPassword) {
        String newPassword = SecureUtil.md5(username + password);
        if (oldPassword.equals(newPassword)) {
            return true;
        }
        return false;
    }
}
