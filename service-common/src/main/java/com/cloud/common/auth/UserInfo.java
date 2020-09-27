package com.cloud.common.auth;

import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Set;

/**
 * @author zhuwj
 * @desc 用户信息
 */
@Data
public class UserInfo implements Serializable {

    /**
     * 用户id
     */
    private Long userId;

    /**
     * 用户名
     */
    private String username;
    /**
     * 昵称
     */
    private String nickName;
    /**
     * 电话号码
     */
    private String phone;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 性别
     */
    private Integer gender;
    /**
     * 最后登入时间
     */
    private LocalDateTime lastLoginTime;
    /**
     * 角色列表
     */
    private Set<String> roles;
    /**
     * 资源列表
     */
    private Set<String> resources;


}
